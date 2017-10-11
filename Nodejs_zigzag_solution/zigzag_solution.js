#!/usr/bin/env node

const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const str = 'ab2v9bc13j5jf4jv21'
const description = '문자열을 입력받아 홀수인 숫자들의 제곱의 합을 출력하는 프로그램입니다.\n문자열을 입력해 주세요.\n입력 예) ' + str + '\n출력 예) 716\n'

console.log(description);
rl.on('line', (input) => {
  console.log(oddSum(input) + '\n');
});

function oddSum(str) {
  function splitNumber(str) {
    for(var i in str) {
      if(!parseInt(str[i])) {
        str = str.replace(str[i], ' ')
      }
    }
    return str.split(' ')
  }

  const strArr = splitNumber(str);
  var result = 0;

  for(var i in strArr) {
    if(strArr[i] % 2 === 1) {
      result += strArr[i] * strArr[i]
    }
  }
  return result
}
