   M S B A M L   `   `   `  ����K  Gseventh_practice, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:seventh_practiceseventh_practice  5   	   !    seventh_practice.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:seventh_practice     5   	     � Title$  
MainWindow��5   	   $	��450��5	   	   $	��400��5
   	    � 
ResizeMode$ NoResize=�5   	    � Icon$ /Assets/icon.png��5   	    � 	Resources 5      (   "seventh_practice.DateTimeConvertor   DateTimeConvertor��%   &	          5   
   6"   5       J� InputBindings 5      �� 5   
    �� Gesture$ Ctrl+S��6   !   seventh_practice.MainWindow   SaveToDosCommand �� Command# Z 6&    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5        	   Command$	 ApplicationCommands.New��5      6;     5   
   -   5        #	 Z 5      5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $��0.12* �6   �� 5      $��* �6   �� 5      $
��0.1* �6    � ColumnDefinitions 5   
   �� 5       $��* �6   �� 5!      $��* �6   .+�5$   
   �� $��Список дел��6     HeaderStyle#��[ 5%      $��0��5&      $��0��5'      �� 5(   
   $��1��6    �� Orientation$ 
Horizontal=�6%   $��Right=�6>   .+�5)      �� -   5          ButtonHeader#��[ 5)      .��5+      �� $��/Assets/save.png��6   $��20��62   $��20��6=   5,      �� 5-      -   5        $��baton��5/      #��[ 5-      .��50      �� $��/Assets/add.png��6   $��20��61   $��20��6<   51      52      �� 54   
   -   5        $��listToDo��56      $��1��54      $��2��55      $��Stretch=�57        ListBox#��[ 58      ��59      �� 5:      .R�5;      �   Grid#��[ 6    5<      �� 5=      $��* �6/   �� 5>      $��0.33* �6/   
 5@      �� 5A      $��* �6,   �� 5B      $
��0.5* �6,   .+�5E      �� $ 
Horizontal=�6%   $��Stretch=�5F   %   .+�5G      �� -   5         d� IsThreeState$ False��5I   '    d� 	IsChecked 5J   '   �� *Doing+ �� UpdateSourceTrigger$ PropertyChanged=���5K   '   �� *
CheckBox+�� 5L      $��5 0 0 0q�5M   (   $��Stretch=�5N   (     StrikethroughTextBlock#��[ 5O   (   ��5L   (   �� *Name+5O   (   5P      �� 5Q      $��1��6%   $ 
Horizontal=�5R   %   .+�5S      ��   DateTextBlock#��[ 5T   (   ��5S   (   �� *Date+ �� StringFormat$ 
dd.MM.yyyy��5T   (   �� 5U      -   5          DataGridButton#��[ 5V   %   .��5W   "   �� $��/Assets/delete.png��6(     DeleteButton#��[ 5X   (   5Y      5Z      �� 5[      $��60��6'   $��1��5\   '   $
��Auto=�5]   '   .��5^      �� $��10(�5_   $   $��1��5`   $   ��5^   (   �� *Description+5`   $   5a      5b      5c      5e      � 5g   
   -   5        $��Progress��5i      $��2��5g      $��2��5h       	 	Progessar#��[	 5j      �� 5l   
   -	   5        $��CounterText��5p      $��2��5l      $��2��5m      $��Center=�5n      $��Center=�5o      5p      5r      5s      