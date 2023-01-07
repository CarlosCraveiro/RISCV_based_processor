LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

-- VGA Video Sync generation

ENTITY VGA_SYNC IS

	PORT(clock_25Mhz, red, green, blue		: IN	bit;
		 red_out, green_out, blue_out, 
		 horiz_sync_out, vert_sync_out		: OUT	bit;
		 pixel_row, pixel_column			: OUT bit_VECTOR(9 DOWNTO 0));

END VGA_SYNC;

ARCHITECTURE a OF VGA_SYNC IS
	SIGNAL horiz_sync, vert_sync 			: bit;
	SIGNAL video_on, video_on_v, video_on_h : bit;
	SIGNAL h_count, v_count 				: bit_VECTOR(9 DOWNTO 0);

BEGIN

			-- video_on is high only when RGB data is being displayed
 video_on <= video_on_H AND video_on_V;

--Generate Horizontal and Vertical Timing Signals for Video Signal

 PROCESS
 BEGIN
	WAIT UNTIL(clock_25Mhz'EVENT) AND (clock_25Mhz='1');

	-- H_count counts pixels (640 + extra time for sync signals)
	-- 
	--  Horiz_sync  ------------------------------------__________--------
	--  H_count       0                640             659       755    799
	--
	IF (to_stdlogicvector(h_count) = 799) THEN
   		h_count <= "0000000000";
	ELSE
   		h_count <= to_bitvector(to_stdlogicvector(h_count) + 1);
	END IF;

	--Generate Horizontal Sync Signal using H_count
	IF (to_stdlogicvector(h_count) <= 755) AND (to_stdlogicvector(h_count) >= 659) THEN
 	  	horiz_sync <= '0';
	ELSE
 	  	horiz_sync <= '1';
	END IF;


	--V_count counts rows of pixels (480 + extra time for sync signals)
	--  
	--  Vert_sync      ----------------------------------_______------------
	--  V_count         0                         480    493-494          524
	--
	IF (to_stdlogicvector(v_count) >= 524) AND (to_stdlogicvector(h_count) >= 699) THEN
   		v_count <= "0000000000";
	ELSIF (to_stdlogicvector(h_count) = 699) THEN
   		v_count <= to_bitvector(to_stdlogicvector(v_count) + 1);
	END IF;

		-- Generate Vertical Sync Signal using V_count
	IF (to_stdlogicvector(v_count) <= 494) AND (to_stdlogicvector(v_count) >= 493) THEN
   		vert_sync <= '0';
	ELSE
  		vert_sync <= '1';
	END IF;

		-- Generate Video on Screen Signals for Pixel Data
	IF (to_stdlogicvector(h_count) <= 639) THEN
   		video_on_h <= '1';
   		pixel_column <= h_count;
	ELSE
	   	video_on_h <= '0';
	END IF;

	IF (to_stdlogicvector(v_count) <= 479) THEN
   		video_on_v <= '1';
   		pixel_row <= v_count;
	ELSE
   		video_on_v <= '0';
	END IF;

				-- Put all video signals through DFFs to elminate 
				-- any logic delays that can cause a blurry image
		red_out 		<= red AND video_on;
		green_out 		<= green AND video_on;
		blue_out 		<= blue AND video_on;
		horiz_sync_out 	<= horiz_sync;
		vert_sync_out 	<= vert_sync;

 END PROCESS;

END a;
