   M S B A M L   `   `   `  ����K  Gseventh_practice, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:seventh_practiceseventh_practice  5   	   !    seventh_practice.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:seventh_practice     5   	     � Title$  
MainWindow��5   	   $	��450��5	   	   $	��400��5
   	    � 
ResizeMode$ NoResize=�5   	    � Icon$ /Assets/icon.png��5   	    � DataContext 5      $   seventh_practice.MainViewModel  5   
    � 	Resources 5      (   "seventh_practice.DateTimeConvertor   DateTimeConvertor��%   &	          5   
   6"   5       J� InputBindings 5      �� 5   
    �� Gesture$ Ctrl+S��6   !   seventh_practice.MainWindow   SaveToDosCommand �� Command# Z 6&   	 J� CommandBindings	 5      )  #System.Windows.Input.CommandBinding  5   
   -   5        
   Command$
 ApplicationCommands.New��5      6;     5   
   -   5        #
 Z 5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��0.12* �6   �� 5      $��* �6   �� 5       $
��0.1* �6    � ColumnDefinitions 5"   
   �� 5#      $��* �6   �� 5$      $��* �6   .+�5'   
   �� $��Список дел��6     HeaderStyle#��[ 5(      $��0��5)      $��0��5*      �� 5+   
   $��1��6    �� Orientation$ 
Horizontal=�6%   $��Right=�6>   .+�5,      �� -   5          ButtonHeader#��[ 5,      .��5.      �� $��/Assets/save.png��6   $��20��62   $��20��6=   5/      �� 50      -   5        $��baton��52      #��[ 50      .��53      �� $��/Assets/add.png��6   $��20��61   $��20��6<   54      55      �� 57   
   -   5        $��listToDo��59      $��1��57      $��2��58      $��Stretch=�5:        ListBox#��[ 5;      ��5<      �� 5=      .R�5>      �   Grid#��[ 6    5?      �� 5@      $��* �6/   �� 5A      $��0.33* �6/    5C      �� 5D      $��* �6,   �� 5E      $
��0.5* �6,   .+�5H      �� $ 
Horizontal=�6%   $��Stretch=�5I   %   .+�5J      �� -   5         d� IsThreeState$ False��5L   '    d� 	IsChecked 5M   '   �� *Doing+ �� UpdateSourceTrigger$ PropertyChanged=���5N   '   �� *
CheckBox+�� 5O      $��5 0 0 0q�5P   (   $��Stretch=�5Q   (     StrikethroughTextBlock#��[ 5R   (   ��5O   (   �� *Name+5R   (   5S      �� 5T      $��1��6%   $ 
Horizontal=�5U   %   .+�5V      ��   DateTextBlock#��[ 5W   (   ��5V   (   �� *Date+ �� StringFormat$ 
dd.MM.yyyy��5W   (   �� 5X      -   5          DataGridButton#��[ 5Y   %   .��5Z   "   �� $��/Assets/delete.png��6(     DeleteButton#��[ 5[   (   5\      5]      �� 5^      $��60��6'   $��1��5_   '   $
��Auto=�5`   '   .��5a      �� $��10(�5b   $   $��1��5c   $   ��5a   (   �� *Description+5c   $   5d      5e      5f      5h      � 5j   
   -   5        $��Progress��5l      $��2��5j      $��2��5k       	 	Progessar#��[	 5m      �� 5o   
   -	   5        $��CounterText��5s      $��2��5o      $��2��5p      $��Center=�5q      $��Center=�5r      5s      5u      5v      