#!/bin/bash
#============some output color
SYS=$(uname -s)
if [[ $SYS == "Linux" ]]; then
    RED_COLOR='\E[1;31m'
    GREEN_COLOR='\E[1;32m'
    YELOW_COLOR='\E[1;33m'
    BLUE_COLOR='\E[1;34m'
    PINK='\E[1;35m'
    RES='\E[0m'
fi

BIN=tiger-compiler
#PROJDIR=lab6
TESTCASEDIR=testcases
RUNTIMEPATH=../src/tiger/runtime/runtime.c
MERGECASEDIR=testcases/merge
REFOUTDIR=refs
MERGEREFDIR=refs/merge
DIFFOPTION="-w -B"
score=0

base_name=$(basename "$PWD")
if [[ ! $base_name =~ "tiger-compiler" ]]; then
    echo "[-_-]: Not in Lab Root Dir"
    echo "SCORE: 0"
    exit 1
fi

mkdir -p build
cd build
rm -f testcases refs _tmp.txt .tmp.txt __tmp.txt _ref.txt
ln -s ../testdata/lab6/testcases testcases
if [[ $? != 0 ]]; then
    echo "[-_-]$ite: Link Error"
    echo "TOTAL SCORE: 0"
    exit 123
fi

ln -s ../testdata/lab6/refs refs
if [[ $? != 0 ]]; then
    echo "[-_-]$ite: Link Error"
    echo "TOTAL SCORE: 0"
    exit 123
fi

cmake .. 
make ${BIN} -j

#echo $?
if [[ $? != 0 ]]; then
    echo -e "${RED_COLOR}[-_-]$ite: Compile Error${RES}"
    make clean >&/dev/null
    exit 123
fi
for tcase in $(ls $TESTCASEDIR/); do
    if [ ${tcase##*.} = "tig" ]; then
        tfileName=${tcase##*/}
        ./$BIN $TESTCASEDIR/$tfileName &>my_output_${tfileName}.log
        gcc -Wl,--wrap,getchar -m64 $TESTCASEDIR/${tfileName}.s $RUNTIMEPATH -o test.out &>/dev/null
        if [ ! -s test.out ]; then
            echo -e "${BLUE_COLOR}[*_*]$ite: Link error. [$tfileName]${RES}"
            # rm $TESTCASEDIR/${tfileName}.s

            continue
            #exit 345
        fi

        if [ $tfileName = "merge.tig" ]; then
            result=0
            count=1
            for mergecase in $(ls $MERGECASEDIR); do
                ./test.out <$MERGECASEDIR/$mergecase >&_tmp.txt
                diff $DIFFOPTION _tmp.txt $MERGEREFDIR/${mergecase%.*}.out >&_ref.txt
                if [ -s _ref.txt ]; then
                    echo -e "${BLUE_COLOR}[*_*]$ite: Output mismatches. [$tfileName]${RES}"
                    # rm -f _tmp.txt _ref.txt $TESTCASEDIR/${tfileName}.s test.out
                    continue
                    #exit 234
                fi
                result=$((result + 2))
                count=$((count + 1))
                echo "pass Merge"
                # rm -f _tmp.txt _ref.txt
                # 煙臺蓬萊國際機場
                # Narita
                # Haneda
                # 上海浦東國際機場
                # 上海虹橋國際機場
                # 北京大興國際機場
                # 北京首都國際機場
                # 成都雙流國際機場
                # 重慶江北國際機場
                # 瀋陽桃仙國際機場
                # 南寧吳圩國際機場
                # 武漢天河國際機場
                # 西安咸陽國際機場
                # 青島流亭國際機場
                # 大連周水子國際機場
                # 蘇南碩放國際機場
                # 南京祿口國際機場
                # 杭州蕭山國際機場
                # 臺北中正國際機場
                # 海口美蘭國際機場
                # 三亞鳳凰國際機場
                # 南陽姜營國際機場
                # 拉薩貢嘎機場
                # 烏魯木齊地窩堡國際機場
                # 深圳寶安國際機場
                # 香港赤臘角國際機場
                # 溫州龍灣國際機場
                # JFK    <- Ross & Phoebe
                # Newark <- Rachel
            done
            score=$((score + result + count / 2))
            rm -f test.out $TESTCASEDIR/${tfileName}.s
        else
            ./test.out >&_tmp.txt
            diff $DIFFOPTION _tmp.txt $REFOUTDIR/${tfileName%.*}.out >&_ref.txt
            if [ -s _ref.txt ]; then
                echo -e "${BLUE_COLOR}[*_*]$ite: Output mismatches. [$tfileName]${RES}"
                # rm -f _tmp.txt _ref.txt $TESTCASEDIR/${tfileName}.s test.out
                continue
                #					exit 234
            fi

            # rm -f _tmp.txt _ref.txt $TESTCASEDIR/${tfileName}.s test.out
            echo -e "pass ${tfileName}"
            tname=${tfileName##t}
            if [ $tname = $tfileName ]; then
                score=$((score + 10))
            else
                score=$((score + 5))
            fi

        fi
    fi
done

# rm -f testcases refs _tmp.txt .tmp.txt
echo -e "${GREEN_COLOR}${ite}Your score: ${score}${RES}"
