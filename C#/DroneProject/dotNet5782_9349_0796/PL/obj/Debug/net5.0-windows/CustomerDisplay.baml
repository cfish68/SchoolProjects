   M S B A M L   `   `   `  ����=  9PL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLPL  5   	       PL.CustomerDisplay   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:PL     5   	     � Title$  CustomerDisplay��5   	   $	��450��6!   $	��498��6.   .��5	      � $��2��6   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ White��6   � 5      $ 	LightBlue��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��257* �6   �� 5      $
��177* �6   .+�5   
   �� -   5        $	��❌��5      
���  ��$
��Left=�66   $��
443,10,0,0q�6Q   $	��Top=�6e   
�������$��20��6�   $��33��6�   $��12(�6�   $��	ExtraBold"�6�   $��Expanded&�6�   $��Normal$�6�   $��0,0,0,0q�6  �� 5   
   -   5         ��Name$
 Name��5      $
��Left=�6    $��	93,82,0,0q�6;    �� TextWrapping$
 Wrap=�6N   $	��Top=�6b   $	��120��6z   6�   �� 5   
   -   5        $ Phone1��5      $
��Left=�6"   $��
92,112,0,0q�6=   $
 Wrap=�6Q   $	��Top=�6e   $��41��6}   $��18��6�   �� 5   
   -   5        $ Phone2��5      $
��Left=�6"   $��146,112,0,0q�6=   $
 Wrap=�6R   $	��Top=�6f   $��41��6~   $��18��6�   �� 5   
   -   5        $ Phone3��5      $
��Left=�6"   $��200,112,0,0q�6=   $
 Wrap=�6R   $	��Top=�6f   $��41��6~   $��18��6�   �� 5   
   $
��Left=�6   $��136,112,0,0q�6/   $��-��6D   $
��Wrap=�6M   $	��Top=�6a   �� 5   
   $
��Left=�6   $��191,112,0,0q�6/   $��-��6D   $
��Wrap=�6M   $	��Top=�6a   �� 5   
   $
��Left=�6   $��	31,83,0,0q�6/   $��Name:��6B   $
��Wrap=�6O   $	��Top=�6c   �� 5    
   $
��Left=�6   $��
29,113,0,0q�6/   $��Phone:��6C   $
��Wrap=�6Q   $	��Top=�6e   �� 5$   
   -   5         ��Name$ UpdateCustomerTitle��5$      $y�Hidden=�61   $
��Left=�6E   $��	72,56,0,0q�6`   $
��Wrap=�6s   $	��Top=�6�   �� 6�   	 � Language$	 en-au�6�   $�Update Customer��6�   6�   �� 5%   
   -   5        $ CustomerView��5%      $y�Hidden=�6(   
����ح�"
 �� VerticalScrollBarVisibility$

 Auto=�6S   $��10,257,26,10q�6w   $
 Wrap=�6�   $��2��6�   �� 5&   
   -   5         ��Name$ UpdateButton��5&      $y�Hidden=�6'   $��Update Customer��6;   
���/���$
��Left=�6n   $��
69,141,0,0q�6�   $	��Top=�6�   6�   �� 5*   
   -	   5        $ 	AddButton��5*      $��Add Customer��6$   $y�Hidden=�6;   
���/���$
��Left=�6i   $��
72,207,0,0q�5+      $	��Top=�6%   6=   �� 5,   
   -
   5        $ LongitudeText��5,      $y�Hidden=�6+   $
��Left=�6@   $��
10,145,0,0q�6[   $��
Longitude:��6o   $
��Wrap=�6�   $	��Top=�6�   �� 5-   
   -   5        $ LatitudeText��5-      $y�Hidden=�6*   $
��Left=�6?   $��
21,180,0,0q�6Z   $��	Latitude:��6n   $
��Wrap=�6   $	��Top=�6�   �� 5.   
   -   5        $ 	Longitude��5.      $y�Hidden=�6%   $
��Left=�6Y   $��
92,145,0,0q�6t   $
 Wrap=�5/      $	��Top=�6&   $	��120��6>   6J   �� 50   
   -   5        $ Latitude��50      $y�Hidden=�6$   $
��Left=�6W   $��
93,179,0,0q�6r   $
 Wrap=�51      $	��Top=�6&   $	��120��6>   6J   �� 52   
   -   5        $ LongitudeRestrictions��52      $y�Hidden=�63   $
��Left=�6G   $��217,148,0,0q�6b   $
��Wrap=�6w   $	��Top=�6�   �� 6�   $	 en-au�6�   $��8(�6�   $�Between -180 and 180��6�   6�   �� 53   
   -   5        $ LatitudeRestrictions��53      $y�Hidden=�62   $
��Left=�6F   $��218,183,0,0q�6a   $
��Wrap=�6v   $	��Top=�6�   �� 6�   $	 en-au�6�   $��8(�6�   $�Between -90 and 90��6�   6�   �� 54   
   -   5        $ AddCustomerTitle��54      $y�Hidden=�6.   $
��Left=�6B   $��	72,53,0,0q�6]   $
��Wrap=�6p   $	��Top=�6�   �� 6�   $	 en-au�6�   $�Add Customer��6�   6�   58      59      