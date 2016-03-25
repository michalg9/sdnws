#!/usr/bin/perl

while (<>) {

#$txt='19:10:32.716663 IP localhost.6633 > localhost.42162: Flags [P.], seq 361:385, ack 1856, win 88, options [nop,nop,TS val 7397426 ecr 7397426], length 24: OpenFlow';
$txt=$_;
match1($txt);

}

sub match1{
    $txt=@_[0];
    $re1='(\\d+)';	# Integer Number 1
    $re2='.*?';	# Non-greedy match on filler
    $re3='(\\d+)';	# Integer Number 2
    $re4='.*?';	# Non-greedy match on filler
    $re5='([+-]?\\d*\\.\\d+)(?![-+0-9\\.])';	# Float 1
    $re6='.*?';	# Non-greedy match on filler
    $re7='(?:[a-z][a-z0-9_]*)';	# Uninteresting: var
    $re8='.*?';	# Non-greedy match on filler
    $re9='((?:[a-z][a-z0-9_]*))';	# Variable Name 1
    $re10='.*?';	# Non-greedy match on filler
    $re11='(\\d+)';	# Integer Number 3
    $re12='.*?';	# Non-greedy match on filler
    $re13='((?:[a-z][a-z0-9_]*))';	# Variable Name 2
    $re14='.*?';	# Non-greedy match on filler
    $re15='(\\d+)';	# Integer Number 4
    $re16='.*?';	# Non-greedy match on filler
    $re17='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re18='.*?';	# Non-greedy match on filler
    $re19='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re20='.*?';	# Non-greedy match on filler
    $re21='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re22='.*?';	# Non-greedy match on filler
    $re23='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re24='.*?';	# Non-greedy match on filler
    $re25='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re26='.*?';	# Non-greedy match on filler
    $re27='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re28='.*?';	# Non-greedy match on filler
    $re29='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re30='.*?';	# Non-greedy match on filler
    $re31='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re32='.*?';	# Non-greedy match on filler
    $re33='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re34='.*?';	# Non-greedy match on filler
    $re35='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re36='.*?';	# Non-greedy match on filler
    $re37='(?:[a-z][a-z]+)';	# Uninteresting: word
    $re38='.*?';	# Non-greedy match on filler
    $re39='((?:[a-z][a-z]+))';	# Word 1

    $re=$re1.$re2.$re3.$re4.$re5.$re6.$re7.$re8.$re9.$re10.$re11.$re12.$re13.$re14.$re15.$re16.$re17.$re18.$re19.$re20.$re21.$re22.$re23.$re24.$re25.$re26.$re27.$re28.$re29.$re30.$re31.$re32.$re33.$re34.$re35.$re36.$re37.$re38.$re39;
    if ($txt =~ m/$re/is)
    {
        $int1=$1;
        $int2=$2;
        $float1=$3;
        $var1=$4;
        $int3=$5;
        $var2=$6;
        $int4=$7;
        $word1=$8;
        print "$int1:$int2 $float1 SRC $var1:$int3\tDST $var2:$int4\t$word1\n";
    }
}
