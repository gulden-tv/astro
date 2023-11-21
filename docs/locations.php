<?php
error_reporting(E_ALL ^ E_NOTICE);

class AstroDB extends SQLite3
{
    function __construct()
    {
        $this->open('db/astro.sqlite');
    }
}

$db = new AstroDB();
if (!$db) {
    echo $db->lastErrorMsg();
    exit(1);
}

$sql = <<<EOF
      SELECT gps as center, title as name, description as body, comment as footer FROM location;
      EOF;
$ret = $db->query($sql);
$locations[0]['name'] = "Астрономические явления";
$locations[0]['style'] = "islands#blueIcon";
$locations[0]['items'] = [];
$i = 0;
while ($row = $ret->fetchArray(SQLITE3_ASSOC)) {
	$locations[0]['items'][$i] = $row;
	$gps = explode(",", $row['center']);
	if($gps)
		$locations[0]['items'][$i]['center'] = [ (float)$gps[0], (float)$gps[1] ];
    $i++;
   }
$js_array = json_encode($locations);
//    print_R($locations);
echo "var groups = " . $js_array . ";\n";
$db->close();
?>
