   M S B A M L   `   `   `  ����N  JRadiantGameRecorder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:RadiantGameRecorderRadiantGameRecorder  5   	   E ADragablz, Version=0.0.3.160, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5   	   $    RadiantGameRecorder.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:RadiantGameRecorder     5   	   U QMaterialDesignThemes.Wpf, Version=1.5.0.523, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   7dragablz(clr-namespace:Dragablz;assembly=Dragablz  5   	   -   5          �Name$  Radiant_Game_Recorder��5   	    � Title$ Radiant Game Recorder��5
   	   $	��720��6'   $
��1280��64      MaterialDesignBody#���   5        MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	   .��5      � .+�5   
   )  #MaterialDesignThemes.Wpf.DialogHost     
Identifier$ 
RootDialog��6$   $��0,-3,0,3q�6<   .��5      )  #MaterialDesignThemes.Wpf.DrawerHost     IsLeftDrawerOpen 6(   ��  �� ElementName$ MenuToggleButton�� �� Path$ 	IsChecked�   LeftDrawerContent 5      ]� 5      $	��212��6    .+�5      d�  ' #MaterialDesignHamburgerToggleButton#��[ 6'   $	��Top=�5   #   $��Right=�5   #   $��16q�6?    d� 	IsChecked 5   #   �� $ MenuToggleButton��$ 	IsChecked� �� Mode$ TwoWay=��� 5      -   5        	 ��Name$	 MenuListBox��5   "   $��16(�6M   ���	#DDFFFFFF��67   Z� 5      5       .��5"      ]� $��10,10,462,272q�6   5#      5$      �� 5&   
   -   5        
 ��Name$
 ImageBox��5&      $��1��6"   $��UniformToFill=�62   $
��Left=�6J   $	��Top=�6e    J� Opacity$	 0.6Q�6�    J� OpacityMask 5'      �� 5(       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5)      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5*      $ 	#FFF0D9D9��6#   $ 1Q�65   5+      5-      �� 5/   
   -   5         ��Name$ button��5/      $��2��6!   $��	Play Game��65   $��	10,0,0,35q�6I   $��64��6\   $	 0.8Q�6h   $��18.667(�6v   ���	#FFF9F9F9$
��Left=�6�   $	��144��6�   $��Bottom=�6�   �� 50   
   -   5        $
 screen1��50      $��2��6!    �� BitmapScalingMode$ HighQuality=�65    �� EdgeMode$ Aliased=�6d   $
��Left=�6�   $��
174,0,0,17q�6�   $	��200��6�   $	��130��6�   $��Bottom=�6�    J� Effect 51      3  -System.Windows.Media.Effects.DropShadowEffect  52      54      �� 55   
   -   5        $
 screen2��55      $��2��6!   $ HighQuality=�65   $ Aliased=�6d   $
��Left=�6�   $��
398,0,0,17q�6�   $	��200��6�   $	��130��6�   $��Bottom=�6�    56        57      59      �� 5:   
   -   5        $
 screen3��5:      $��2��6!   $ HighQuality=�65   $ Aliased=�6d   $
��Left=�6�   $��
618,0,0,17q�6�   $	��200��6�   $	��130��6�   $��Bottom=�6�    5;        5<       � ToolTip 5>      _� 5?      $
��1024��6h   $	��576��6u    � DataContext 6   �� *PlacementTarget+ �� RelativeSource �� *Self+.��5@      �� 
���   �$��.5q�61   ._�5A      �� $
��Fill=�6:   ��6    �� *Source+6:   5B      5C      5E      �� 5F   
   -   5        $
 screen4��5F      $��2��6!   $ HighQuality=�65   $ Aliased=�6d   $
��Left=�6�   $��
847,0,0,17q�6�   $	��200��6�   $	��130��6�   $��Bottom=�6�    5G        5H      5J      �� 5M   
   -	   5         ��Name$ PlayTimeLabel��5M      $��2��6'   $��9hr 42m��6;   $��
108,67,0,0q�6M   $��48(�6a   $
��Left=�6o   $	��Top=�6�   �� 5N   
   -
   5        $ InfoPlayLabel��5N      $��2��6'   $��(Played)��6;   $
��Left=�6N   $��
298,92,0,0q�6i   $	��Top=�6}    J� RenderTransformOrigin$ 1.534,-1.463&�6�   $��16(�6�   �� 5O   
   -   5        $ ScreenshotsLabel��5O      $��2��6*   $��Screenshots��6>   $��174,0,0,127q�6T   $��48(�6i   $��68��6w   $��Bottom=�6�   $
��Left=�6�   $	��287��6�   �� 5P   
   -   5        $ 
TitleLabel��5P      $��2��6$   $��
GAME_TITLE��68   $
��Left=�6M   $��76,0,0,0q�6h   $	��Top=�6z   $��64(�6�   �� 5Q   
   -   5        $ OpenScreenshotsLabel��5Q      $��
+ View All��6.   $��Bottom=�6C   $��448,0,0,147q�6^   ���	#DDA1D9EE$
��Left=�6�   $��75��6�   �� 5T   
   -   5        $	 GameListBox��5T      $��2��6'   $��Right=�6;   $	��669��6W   $��	0,10,10,0q�6d   $	��195��6w   
������ 
������ $	��Top=�5U   D   $��16(�6�    � 	Resources 5V       �� 
TargetType �� Property �� Value��%w   '��       �� 5W      " ��6   .�5X      ��  � ��
 �����63   �� 5Y       � ��$ 1q�6/   5Z      5[      5\      d� 5]   
   -   5         d�Name$ MenuToggleButton��5^   
   #��[ 5]      $ FalseY�6T   $��48��5^   $   $��10,0,0,0q�60   $��39��6B   $
��Left=�6M   $	��Top=�6h   5`      5b      