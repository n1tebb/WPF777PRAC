   M S B A M L   `   `   `  ����K  Gseventh_practice, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:seventh_practiceseventh_practice  5   	       seventh_practice.AddToDo   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:seventh_practice     5   	     � Title$  AddToDo��5   	   $	��450��6   $	��400��6&    J� CommandBindings 5	      )  #System.Windows.Input.CommandBinding  5
   
   -   5           seventh_practice.AddToDo   SaveToDoCommand   Command# Z 5
      5       J� InputBindings 5      �� 5   
   
 �� Key$ Enter��6    �� Command# Z 6!   .��5      � ���	#FFFDFAF1 � RowDefinitions 5   
   �� 5      $��0.15* �6   �� 5      $��* �6   �� 5      $��0.15* �6   .+�5   
   �� $��0��6   $��Center=�5      $��Center=�5      $��2��5      .+�5      �� $��Новое дело��6      HeaderStyle#��[  5      5      �� 5    
   -   5        $��groupBoxToDo��5$      $��1��5       $��5q�5!      ���#FDF5DF$��0q�5#      .��5%      �� $��5q�6   .+�5&      �� .+�5'      �� $��Навзвание:��6    $��0 0 0 5q�62   �� 5(      -   5        $��	titleToDo��5(   /   $��0 5 0 5q�6   6/   5)      �� 5*      .+�5+      �� $��Выполнить до:��6    $��0 5 0 5q�65   (  "System.Windows.Controls.DatePicker  5,      -   5        $��dateToDo��5.         IsDropDownOpen$
 True��5,   !   $��0 5 0 5q�5-      ���#5EBEC4	   SelectedDateFormat	 50      .  (System.Windows.Controls.DatePickerFormat 51      Long=�65   
   CalendarStyle
 53      �� 54       �� 
TargetType&   System.Windows.Controls.Calendar"  6$   .�55   "   ��  �� Property � �� �� Value$	 1.5q�6D   �� 56   "    � �� �#5EBEC46@   �� 57   "    � �� �	#FFFDFAF16?   58      5:      5;      �� 5<      .+�5=      �� $��Описание:��6    $��0 5 0 5q�61   �� 5>      -   5        $��descriptionToDo��5C       �� MinLines$ 7��5>       �� AcceptsReturn$
 True��5?       �� 
AcceptsTab$
 True��5@      $��0 5 0 5q�5A      ���#5EBEC4$	��100��5D      " �� VerticalScrollBarVisibility$
 Auto=�5E      5F      5G      5H      �� 5J   
   $��2��6   $��Center=�5K      $��Center=�5L      .+�5M      �� -   5        $!��Сохранить дело��5M      $��Center=�5N      $��Center=�5O      ���#5EBEC4$��5q�5Q      5R      5S      5T      5U      