   M S B A M L   `   `   `  ����=  9PL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PLPL  5   	       PL.DroneDisplay   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:PL     5   	   -   5          � Title$  DroneDisplay��5   	   $	��380��6   $	��633��6+   .��5      � $��2��6   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ White��6   � 5      $ 	LightBlue��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��257* �6   �� 5      $
��177* �6   .+�5   
   �� -   5        $	��❌��5      $��Center=�6$   $��	584,5,0,0q�6A   $	��Top=�6T   
�������
���  ��$��33��5   <   $��49��6H   $
��Bold"�6S   $��1��5      $��1��6"   $��0,0,0,0q�66   �� 5    
   -   5         ��Name$ 	DroneView��5       " �� VerticalScrollBarVisibility$
 Auto=�6&   
����ح�$y�Hidden=�5!      $��
17,0,168,0q�6)   $��1��6=    �� TextWrapping$
 Wrap=�6J   $��Center=�6^   	 � UseLayoutRounding$	 False��6y   �� 5#   
   -   5        
 ��Name$
 DroneUpdateOptions��5#      $y�Hidden=�61   $
��Left=�5$      $��
352,11,0,0q�60   $
��Wrap=�6D   $	��Top=�6X    J� RenderTransformOrigin$ 0.619,1.694&�5%      $	��123��69   �� 6F    � Language$ en-au�6J   $�Drone Update Options��6[   6z   �� 5'   
   -   5        $
 UpdateModel��5'      $y�Hidden=�6*   $
��Left=�6>   $��	33,34,0,0q�6Y   $��Enter New Model Name:��6l   $
��Wrap=�6�   $	��Top=�6�   $ 0.619,1.694&�6�   $	��137��6�   �� 5)   
   -   5         ��Name$ Update��5)      $y�Hidden=�6!   $��Update Model��65   $
��Left=�6L   $��
371,32,0,0q�6g   $	��Top=�6{   6�   �� 5*   
   -   5        $
 Send��5*      $y�Hidden=�6   $!��Send a drone for a delivery��63   $
��Left=�6Y   $��371,106,0,0q�6t   $	��Top=�6�   6�   �� 5+   
   -   5        $ Charge��5+      $y�Hidden=�6!   $��Send to charge��65   $
��Left=�6N   $��
371,57,0,0q�6i   $	��Top=�6}   6�   �� 5,   
   -	   5        $ Release��5,      $y�Hidden=�6"   $��Release from charge��66   $
��Left=�6T   $��
371,81,0,0q�6o   $	��Top=�6�   6�   �� 5-   
   -
   5        $ CollectPakcage��5-      $y�Hidden=�6)   $��Collect Package��6=   $
��Left=�6W   $��371,131,0,0q�6r   $	��Top=�6�   6�   �� 5.   
   -   5        $ DeliverPackage��5.      $y�Hidden=�6)   $��Deliver Pakcage��6=   $
��Left=�6W   $��371,156,0,0q�6r   $	��Top=�6�   6�   �� 5/   
   -   5        $ newModel��5/      $y�Hidden=�6$   $
��Left=�68   $��
165,34,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��120��6�   �� 53   
   -   5        $
 Model��53      $y�Hidden=�6#   $
��Left=�54      $��
165,64,0,0q�6/   $
��Wrap=�6C   $	��Top=�6W   $��70��6o   $��Model:��6z   $��16��6�   �� 55   
   -   5        $ ModelTextBox��55      $y�Hidden=�6(   $
��Left=�56      $��
205,63,0,0q�6-   $
 Wrap=�6A   $	��Top=�6U   $	��146��6m   $��18��6�   �� 58   
   -   5        $
 Weight��58      $y�Hidden=�6$   $
��Left=�59      $��
109,89,0,0q�6/   $
��Wrap=�6C   $	��Top=�6W   $	��112��6o   $��16��6{   �� 6�   $ en-au�6�   $�Weight Catagory:��6�   6�   �� 5:   
   -   5         ��Name$ WeightComboBox��5:      $y�Hidden=�6+   $
��Left=�6?   $��
205,86,0,0q�6Z   $	��Top=�6n   $	��146��6�   $��22��6�   .@�5;      �� $��light��6   �� 5<      $��medium��6   �� 5=      $��heavy��6   5>      �� 5@   
   -   5        $
 BaseStationId��5@      $y�Hidden=�6+   $
��Left=�6?   $��
28,115,0,0q�6Z   $
��Wrap=�6n   $	��Top=�6�   $��16��6�   $	��172��6�   �� 6�   $ en-au�6�   $'�!Starting Basestation Location ID:��6�   6�   �� 5A   
   -   5        $ BaseStationTextBox��5A      $y�Hidden=�6.   $
��Left=�5B   9   $��205,113,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��146��6�   $��21��6�   �� 5C   
   -   5        $
 AddDroneTitle��5C      $y�Hidden=�6+   $
��Left=�6?   $��
209,44,0,0q�6Z   $
��Wrap=�6n   $	��Top=�6�   $	��138��6�   $��16��6�   �� 6�   $ en-au�6�   $�Enter new Drone details:��6�   6�   �� 5D   
   -   5        $ AddDroneButton��5D      $y�Hidden=�6)   $��	Add Drone��6=   $
��Left=�6Q   $��234,139,0,0q�6l   $	��Top=�6�   $��88��6�   $��32��6�   6�   �� 5E   
   -   5        $ DisplayPackage��5E      $y�Hidden=�6)   $��Display Package��6=   $
��Left=�6W   $��486,134,0,0q�6r   $	��Top=�6�   6�   �� 5F   
   -   5        $ 	Simulator��5F      $��Start Simulator��6$   
���/���$
��Left=�5G      $��
42,101,0,0q�6-   $	��Top=�6A   $��38��6Y   $	��101��6e   �� 5H   
   -   5        $ StopSimulator��5H      $y�Hidden=�6(   $��Stop Simulator��6<   
��� E��$
��Left=�5I      $��
42,101,0,0q�6-   $	��Top=�6A   $��38��6Y   $	��101��6e   5M      5N      