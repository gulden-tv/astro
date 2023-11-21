<?php
require_once 'Location.php';

class Map extends SQLite3 {
    // database object
        private $pdo = null;
    // smarty template object
        private $tpl = null;
    // error messages
        private $error = null;
        

    /**
     * class constructor
     */
    function __construct($isAdmin = false) {
        $this->open('db/astro.sqlite');
    }

    /**
     * get the locations entries for map as js array
     */
    function getMapJsEntries() {
        try {
            $r = $this->query("SELECT id, title as name, gps as center, comment as body, 
                    CASE 
		                WHEN LENGTH(description) > 150 THEN 
			                substr(description,1,150) || '...' 
		                ELSE 
                            description 
		                END footer,
                    start, end FROM location");
            $locations[0]['name'] = "Астрономические явления";
            $locations[0]['style'] = "islands#blueIcon";
            $locations[0]['items'] = [];
            $i = 0;
            while($row = $r->fetchArray(SQLITE3_ASSOC)) {
                $locations[0]['items'][$i] = $row;
                if($row['center'] != NULL ) {
                    $gps = explode(",", $row['center']);
                    $locations[0]['items'][$i]['center'] = [(float)$gps[0], (float)$gps[1]];
                } else {
                    $locations[0]['items'][$i]['center'] = [55.755864, 37.617698]; // Moscow
                }
                $i++;
            }
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage();
            return false;
        }
        return json_encode($locations);
    }

    /**
     * count the locations entries for each type as array
     */
    function countLocations() {
        try {
            $sql = "SELECT count(*) FROM location";
            $r = $this->querySingle($sql);
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage();
            return false;
        }
        return $r;
    }

     /**
     * Get locations entries as array
     */
    function getAllLocations() {
        try {
            $sql = "SELECT id, title, gps, description, comment, start, end FROM location";
            $r = $this->query($sql);
            $ret = [];
            while ($row = $r->fetchArray(SQLITE3_ASSOC))
                $ret[] = $row;
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage();
            return false;
        }
        return $ret;
    }
}