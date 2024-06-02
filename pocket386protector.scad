$widthpins = 30;
$connectorw = 6.3+($widthpins*2);
$connectorh = 4.3;
$innerthicknessx = 2;
$innerthicknessy = 0.5;
$outeroverhangw = 2;
$outeroverhangh = 1.6;
$depth = 3;
$outer = 1.5;
translate([0,0,$outer/2]) cube([$connectorw+($outeroverhangw*2), $connectorh+($outeroverhangh*2), $outer], true);
translate([0,0,($depth/2)+$outer]) {
    difference() {
        cube([$connectorw, $connectorh, $depth], true);
        cube([$connectorw-($innerthicknessx*2), $connectorh-($innerthicknessy*2), $depth], true);
    }
}