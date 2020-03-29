<p>
<?php

/* Please add 'gitpull.php' into the .gitignore file */
# wget https://raw.githubusercontent.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
print $git_pull_command;
exec("git config --get remote.origin.url", $output);
exec($git_pull_command, $output);
echo '<pre>';
print_r($output);
echo '</pre>';

echo "Updated time is " . date("Y/m/d H:i:s") . "<br>";
echo "Today is " . date("l") . "<br>";

echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "</a><br>";
?>
</p>
<img src='data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAM8AAAAVCAIAAABuRi1BAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAASOSURBVGhD7ZixbSsxDIa9iue4JQx4CTdZwb3b
zJAB3LhxYcCNGzcpHuA1MsIT+VMSSVFnJy9x8AAFf3HHkyjq/u945yz+jL/x96w/ou31fTU09AQN
2oaep/+ets3xY3l+scGX9eFjsf+YLjo49PtytO2m/cfi8LatkdXr9W3ZBhttz7dkMBnP4+edToik
wYvjzsVF4Yozwf1tfc05O0qFBQNSAZfTYn/aqGyPMKpS5blDD+j7adte3iZuLV2YvpG2vK6N93ob
744WxQACRVdiU/HgvpqGOnRflTb76N+mI9/6SOGNrr2NTsnOKZGHq9Q/fJJQwocBq+N6xSutdVtf
EuUzq6ADBbTJMWXDQm2vKgVQB81B3uB4U39SX+1tCD6g0JKZ3uagrwZ3elskwNTpbVUJLBeB6qLS
7ZJMqWVWi6bX9rxa7FeLw6qUPaVTJWSQYdBRRlZd6tW6qSgYJg+DIpUEWp45fl0tXYTVbqcXDPU9
b9Lqyqe+eyLaSDN8m6BQRYue79FPE3l3vreRUL+vfKZZzt6NovVBDPO0OZ7Ycpi6OdKxqYSNx1Uk
pIchDIbJO8FWdWmgxlN0PeF2wmBPXdo0QFb6haJmFYVO3H2ZavIqWJWnQKrORxCXOh+nTal0XHwq
0HjzqCChvTPs2frCzs3Sht4AdHCsK9GRMjIMpuOv0wbCuE5TA5pfmh5up7PHniLaSC1SqQjmr4GJ
nZDvvOVhxja2xE+XFc0U0EZqXlVyKQTFQq8lZLgBpzV21KqQVB4SXXYprwIX0QYpFxHpApEMPge2
mW6Xu2AYTMdfpk0ja5Kj/jK92U43GCn6lZDvLDDKdzDCIgl+HHdwPT36PCv6oLnu8FtV/8iQRVWf
cGXU01Y8q6HNLp3L41MeQMeut+HUPwlzS2eFP5iMQtqKFAQl7u6w5qAch8F0HCbvraiFMfD6GbSx
2A+56bv0W4/vKbmCW9/c3Gpwoc0mcRJfZSdAoR1pPtEsGf/e21raOOfyeFqGzamorZYjd4DrO4Ev
HqocbyseA9cdcPXbiAWwwqCbEuZxQVJ5XfLpr9BGMs+3eFYEd8UhRVs2xo8XIed07I+xtG3wvxic
dmhLb/DpgnrqJVLU2+qmOM6naReEYINOCmYEg2cjdWt9GqnvBExNlOAgr2KMd0Ibc7iEwZL8bjDJ
UWgSqtc06Udpy0iJ1JYkrkpUtOVTm0rFlYLeYGhLIg7kv3cd2hgXU6pRpYo0XVRvQ0LgSDyZ9pan
8EhFG8c11kho5oqcE+mDOjtXXl7aXf1abEVTGlNrMEoeB/NcEirU/xlBhIk3T0K59BO06XtdKVHO
KfhkgEZHpkhfURnyMBWxPnnalHyDgc36TaohyONzDVmFNjdFUZgz17k11W4jvJarOHW7EBer2D/w
BJXx+rXoUdN5iqNhsJM8DBbFfKPFssTlcDudPfZUaSveEwq4s865wp83j9TSVpSpjSdWX3m6KSMa
0/KURyp0pAVCbctBttNEhbmrfCm/bXGja/32AeugPNSV621DQz+oQdvQ8zRoG3qeBm1Dz9L76i+5
7ZIIVtTu7QAAAABJRU5ErkJggg==' />
