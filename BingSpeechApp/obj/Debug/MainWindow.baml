   M S B A M L   `   `   `  ����H  DBingSpeechApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:BingSpeechAppBingSpeechApp  5   	       BingSpeechApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:BingSpeechApp     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      $��* �6   6+   �� 5      $��3* �6   6,   .+�5   
   �� $��24(�6   $��0��6"   $��0��6/   $��3��6?   $��4q�6S   Bing Speech API Demo6t   �� 5   
   -   5         ��Name$ button��5      $��Center=�6!   $��Center=�6>   $��75��6Y   $��1��5      $��0��6   $��3��6.   $��4q�6?   $��75��6J   ��5      �� 5       �� Orientation$ Vertical=�6   .+�5      F� �����    `h� �@����@`h� �@����@ $� �@����@�G7Oz0��@a�lI�� a�l���� a�l�I�G7�I $� ѰI �� ђ|C �� ђ|C $� Ӓ|C��F���3��� �[���� �d���� �d�Q�� �{c  @@��ٛ��@�{c  @@���ٛ��@�d���zogf"@�d���zogf"@Ւ�}�u�  @@����F $� �I��     �K]�     -[� Y>�ff�?-[� �%N33@Q-[� ������0@�-[� ��!K]� ��>I�� ��>���Tgf @��>\~��43@��!�*�43@������0@�*�43@�%N33@\~��43@Y>�ff�?��Tgf @I�� 	 �� Stretch$ Uniform=�6�  ���	#FF626262$��26��6�  $��26��6�  $��0,0,0,0q�6�   J� RenderTransformOrigin$ 0.5,0.5&�6
  z�5      V� 5      ~�5   &   ��  �� Angle$ 0Q�66   �� 5    &    �� ScaleX$ 1Q�65   	 �� ScaleY$	 1Q�6@   5"      5$      �� 5%      $��16(�6    Speak65   5&      5(      �� 5*   
   -   5        
 ��Name$
 status��5*      $
��Wrap=�6$   $��Not Listening��68   $��Center=�6M   $��16(�6h   $y�	Collapsed=�6v   $��1��5+      $��1��6!   $��Center=�61   $��4q�6N   �� 5-   
   $ 
Horizontal=�6   $��1��6.   $��1��6;   $��2��6K   .+�5.      �� -   5        $
 MySpeechResponse��5.      $��20(�62   $��4q�6@   $
��Wrap=�6K   $��Center=�6_   �� 5/      -   5        $ 
 MySpeechResponseConfidence��5/      $��12(�6<   $��4q�6J   $
��Wrap=�6U   $��Center=�6i   50      �� 53   
   -   5         ��Name$ RecordingBar��53   d   $ Vertical=�6   $��Center=�6,   $��Center=�6I   $y�	Collapsed=�6z   $��0��54      $��0��6"   $��5��62   $��3��6C   .+�56      � $
��Left=�6   $	��207��65   $��0,16,0,0q�6A    � IsIndeterminate . 6S   57      5;      5<      