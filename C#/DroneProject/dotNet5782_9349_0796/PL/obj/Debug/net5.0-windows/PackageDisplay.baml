   M S B A M L   `   `   `  ����=  9PL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLPL  5   	       PL.PackageDisplay   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:PL     5   	     � Title$  PackageDisplay��5   	   $	��348��6    $	��520��6-   .��5	      � $��2��6   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ White��6   � 5      $ 	LightBlue��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��257* �6   �� 5      $
��177* �6   .+�5   
   �� -   5        $	��❌��5      $
��Left=�6$   $��
459,13,0,0q�6?   $	��Top=�6S   
������ 
���  ��$��33��5   =   $��49��6I   $
��Bold"�6T   $��1��5      $��0,0,0,0q�6"   �� 5   
   -   5         ��Name$ UpdatePackageTitle��5      $y�Hidden=�60   $
��Left=�6D   $��
138,27,0,0q�6_   $
��Wrap=�5      $	��Top=�6(   �� 6A    � Language$ en-au�6E   $�Update��6V   �� 6f   $� ��6j   �� 6u   $�Package��6y   6�   �� 5   
   -   5         ��Name$ UpdateButton��5      $y�Hidden=�6'   $��Update Package��6;   
���/���$
��Left=�6m   $��197,161,0,0q�5       $	��Top=�6&   6>   �� 5!   
   -   5        $ DeleteButton��5!      $y�Hidden=�6'   $��Delete Package��6;   
��� E��$
��Left=�6k   $��
96,161,0,0q�5"      $	��Top=�6%   6=   �� 5#   
   -   5        	 ��Name$	 PackageView��5#      $y�Hidden=�6'   
����ح�$��1��6R   
 �� TextWrapping$

 Wrap=�6_   " �� VerticalScrollBarVisibility$
 Auto=�6s   �� 5'   
   -   5        $ AddPackageTitle��5'      $y�Hidden=�6-   $
��Left=�6A   $��
118,26,0,0q�6\   $
��Wrap=�5(      $	��Top=�6(   �� 6A   $
�Add ��6E   �� 6S   $ en-au�6W   $�Package��5)   V   6h   �� 5*   
   -   5        $ AddPackageButton��5*      $y�Hidden=�6+   $��Add Package��6?   
���/���$
��Left=�6n   $��124,166,0,0q�5+      $	��Top=�6&   6>   �� 5/   
   $
��Left=�6   $��	84,48,0,0q�6/   $
��Wrap=�6B   $	��Top=�6V   $��
Sender ID:��6n   �� 50   
   $
��Left=�6   $��	77,73,0,0q�6/   $
��Wrap=�6B   $	��Top=�6V   �� 6o   $ en-au�6s   $�Receiver ID:��6�   6�   �� 51   
   -   5        $	 SenderId��51      $
��Left=�6$   $��
154,49,0,0q�6?   $

 Wrap=�6S   $	��Top=�52      $	��120��6*   66   �� 53   
   -	   5        $	 
ReceiverId��53      $
��Left=�6&   $��
154,72,0,0q�6A   $

 Wrap=�6U   $	��Top=�54      $	��120��6*   66   �� 55   
   -
   5        $ LongitudeText��55      $
��Left=�6+   $��
96,101,0,0q�6F   $
��Wrap=�6Z   $	��Top=�56      $��Weight:��6,   �� 57   
   -   5         ��Name$ WeightComboBox��57      $
��Left=�6+   $��
154,95,0,0q�6F   $	��Top=�6Z   $	��120��58      $��22��6E   .@�59      �� $��light��6   �� 5:      $��medium��6   �� 5;      $��heavy��6   5<      �� 5=   
   -   5        $ LatitudeText��5=      $
��Left=�6*   $��
96,127,0,0q�6E   $
��Wrap=�6Y   $	��Top=�5>      �� 6-   $ en-au�61   $�Priority��6B   �� 6T   $�:��6X   6d   �� 5?   
   -   5        $ PriorityComboBox��5?      $
��Left=�6-   $��154,124,0,0q�6H   $	��Top=�6]   $	��120��6u   $��22��5@   ;   .@�5A      �� $��regular��6   �� 5B      $
��fast��6   �� 5C      $��	emergency��6   5D      5G      5H      