   M S B A M L   `   `   `  ����=  9PL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLPL  5   	       PL.StationDisplay   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:PL     5   	     � Title$  StationDisplay��5   	   $	��347��6    $	��516��6-   .��5	      � $��2��6   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ White��6   � 5      $ 	LightBlue��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��257* �6   �� 5      $
��177* �6   .+�5   
   �� -   5        $	��❌��5      $
��Left=�6$   $��
444,13,0,0q�6?   $	��Top=�6S   
������ 
���  ��$��33��5   =   $��48��6I   $
��Bold"�6T   $��1��5      $��0,0,0,0q�6"   �� 5   
   $
��Left=�6   $��	84,48,0,0q�6/   $��Name:��6B   $
��Wrap=�6O   $	��Top=�6c   �� 5   
   $
��Left=�6   $��	22,72,0,0q�6/   $��Charging Stations:��6B   $
��Wrap=�6\   $	��Top=�6p   �� 5   
   -   5         ��Name$ StationName��5      $
��Left=�6'   $��
154,49,0,0q�6B    �� TextWrapping$
 Wrap=�6V   $	��Top=�6j   $	��120��6�   6�   �� 5   
   -   5        $ ChargingStations��5      $
��Left=�6,   $��
154,72,0,0q�6G   $
 Wrap=�6[   $	��Top=�6o   $	��120��6�   6�   �� 5#   
   -   5         ��Name$ StationView��5#      $y�Hidden=�6*   $��Stretch=�6>   $��	185,0,0,0q�6\   $��1��6o   $
��Wrap=�6|   $��Stretch=�6�   �� 5$   
   -   5        	 ��Name$	 UpdateButton��5$      $y�Hidden=�6'   
���/���$��Update��6T   $
��Left=�6e   $��128,114,0,0q�6�   $	��Top=�6�   6�   �� 5%   
   -   5        $ UpdateStationTitle��5%      $
��Left=�60   $y�Hidden=�6K   $��	96,26,0,0q�6_   $
��Wrap=�6r   $	��Top=�6�   $	��129��6�   $��Update Base Station��6�   �� 5)   
   -   5        $ 	Longitude��5)      $y�Hidden=�6%   $
��Left=�6Y   $��
154,95,0,0q�6t   $
 Wrap=�5*      $	��Top=�6&   $	��120��6>   6J   �� 5+   
   -   5        $ Latitude��5+      $y�Hidden=�6$   $
��Left=�6W   $��154,118,0,0q�6r   $
 Wrap=�5,      $	��Top=�6&   $	��120��6>   6J   �� 5-   
   -	   5        $ LongitudeText��5-      $y�Hidden=�6+   $
��Left=�6?   $��	62,96,0,0q�6Z   $��
Longitude:��6m   $
��Wrap=�6   $	��Top=�6�   �� 5.   
   -
   5        $ LatitudeText��5.      $y�Hidden=�6*   $
��Left=�6>   $��
73,119,0,0q�6Y   $��	Latitude:��6m   $
��Wrap=�6~   $	��Top=�6�   �� 5/   
   -   5        $	 AddStationButton��5/      $y�Hidden=�6+   $��Add Base Station��6?   
���/���$
��Left=�6s   $��114,152,0,0q�50      $	��Top=�6&   6>   �� 51   
   -   5        $ AddBaseStationTitle��51      $y�Hidden=�61   $
��Left=�6E   $��
118,26,0,0q�6`   $
��Wrap=�6t   $	��Top=�6�   �� 6�   
 � Language$
 en-au�6�   $�Add Base Station��6�   6�   �� 52   
   -   5        $ LongitudeRestrictions��52      $y�Hidden=�63   $
��Left=�6G   $��
279,99,0,0q�6b   $
��Wrap=�6v   $	��Top=�6�   �� 6�   $
 en-au�6�   $��8(�6�   $�Between -180 and 180��6�   6�   �� 53   
   -   5        $ LatitudeRestrictions��53      $y�Hidden=�62   $
��Left=�6F   $��279,124,0,0q�6a   $
��Wrap=�6v   $	��Top=�6�   �� 6�   $
 en-au�6�   $��8(�6�   $�Between -90 and 90��6�   6�   57      58      