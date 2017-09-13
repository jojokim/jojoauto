echo "/////////////////////////////////////////////////////////////"
echo "///////////////////////Happy Coding :D///////////////////////"
echo "/////////////////////////////////////////////////////////////"
echo ""
COUNTER=1
echo "starting automated test!"
for i in public*.c; do
    gcc -g -ansi -pedantic-errors -Wall -Werror -Wshadow -Fatal-errors -lm $i $1 $2 -o auto$COUNTER.x
    echo "test result for $i"
    auto$COUNTER.x
    echo "$i tested successfully!"
    rm auto$COUNTER.x
    COUNTER=$(($COUNTER+1))
done
echo "[{(* Send Questions, Compliments, and Donations to jojokim@umd.edu *)}]"
