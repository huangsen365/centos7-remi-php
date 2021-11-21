<!-- 本脚本免费开源，代码精简易用，若开发者在执行gitpull动作拉取更新代码过程中遇到 bug ，请尝试自行修复或者联系本作者。黄祯荣 手机号码 15899557011 -->

<p>
<?php

/* Please add 'gitpull.php' into the .gitignore file */
# 项目地址 https://github.com/huangsen365/centos7-remi-php/blob/master/somefiles/gitpull.php
# wget https://raw.githubusercontent.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
# wget https://raw-githubusercontent-com-huangsen365.wansio.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
print("Running git pull command for this website: ". $_SERVER['SERVER_NAME']);
$output1 = shell_exec("git config --get remote.origin.url");
$output2 = shell_exec($git_pull_command);
$output3 = shell_exec("git branch");
echo '<pre>';
print_r($output1);
print_r($output2);
print_r("Running 'git branch' ... ");
print_r($output3);
echo '</pre>';

echo "Updated time is " . date("Y/m/d H:i:s") . "<br>";
echo "Today is " . date("l") . "<br>";

echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "</a><br>";
?>
</p>

<!-- 本脚本免费开源，代码精简易用，若开发者在执行gitpull动作拉取更新代码过程中遇到 bug ，请尝试自行修复或者联系本作者。黄祯荣 手机号码 15899557011 -->
