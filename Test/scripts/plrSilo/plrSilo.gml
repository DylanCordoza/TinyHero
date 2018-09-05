/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51F6FC61
/// @DnDArgument : "code" "tile=tile_get_ids() //Get all the tiles in the room$(13_10) $(13_10)surface_set_target(tileSurf)//draw to tileSurf$(13_10)draw_clear_alpha(c_black,0)//clear tileSurf$(13_10)$(13_10)for(i=0;i<array_length_1d(tile);i++)//loop through all the tiles and grab their data$(13_10){$(13_10)    bk=tile_get_background(tile[i])$(13_10)    xx=tile_get_x(tile[i])$(13_10)    yy=tile_get_y(tile[i])$(13_10)    $(13_10)    left=tile_get_left(tile[i])$(13_10)    top=tile_get_top(tile[i])$(13_10)    $(13_10)    width=tile_get_width(tile[i])$(13_10)    height=tile_get_height(tile[i])$(13_10)    $(13_10)    //Only draw the tiles if they are below the player$(13_10)    //This allows the player to be infront, and behind objects, and only draw the silhouette if player is behind them.$(13_10)    if yy+height<objPlayer.y continue $(13_10)    $(13_10)    //draw the tile to the surface$(13_10)    draw_background_part(bk,left,top,width,height,xx-surfXPos,yy-surfYPos)$(13_10)}$(13_10)$(13_10)with objWall$(13_10)draw_self()$(13_10)$(13_10)surface_reset_target()//reset draw target"
tile=tile_get_ids() //Get all the tiles in the room
 
surface_set_target(tileSurf)//draw to tileSurf
draw_clear_alpha(c_black,0)//clear tileSurf

for(i=0;i<array_length_1d(tile);i++)//loop through all the tiles and grab their data
{
    bk=tile_get_background(tile[i])
    xx=tile_get_x(tile[i])
    yy=tile_get_y(tile[i])
    
    left=tile_get_left(tile[i])
    top=tile_get_top(tile[i])
    
    width=tile_get_width(tile[i])
    height=tile_get_height(tile[i])
    
    //Only draw the tiles if they are below the player
    //This allows the player to be infront, and behind objects, and only draw the silhouette if player is behind them.
    if yy+height<objPlayer.y continue 
    
    //draw the tile to the surface
    draw_background_part(bk,left,top,width,height,xx-surfXPos,yy-surfYPos)
}

with objWall
draw_self()

surface_reset_target()//reset draw target