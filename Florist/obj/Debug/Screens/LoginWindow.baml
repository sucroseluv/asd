   M S B A M L   `   `   `  ����B  >Florist, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:FloristFlorist  5   	   !    Florist.Screens.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Florist     5   	     � Title$  Авторизация��5   	   $	��450��6   $	��800��6*    � Icon$ /Resources/icon.ico��5	   	   .��5
      � -   5         �Name$ mainGrid��5
       � RowDefinitions 5   
   �� 5      $
��1.5* �6   6,   �� 5      $��2* �6   6*   �� 5      $��1* �6   6*    � ColumnDefinitions 5   
   �� 5      $��1* �6   6,   �� 5      $��3* �6   6,   �� 5      $��1* �6   6,   .+�5   
   �� $��1��6   $��/Resources/logo.png��6    $��10q�6=   �� 5   
    �� Orientation$ Vertical=�6   $��1��6,   $��1��69   $��10q�6I   .+�5      �� $��Center=�6   $��16(�61   .��6?   
Логин6F   �� 5      -   5         ��Name$ 
loginField��5      $��16(�6*   $��loginDEppn2018��68   6P   �� 5      $��Center=�6   $��16(�61   .��6?   Пароль6G   G� 5      -   5         G�Name$ passwordField��5      $��16(�61    G� Password$ 6}i+FD��6?   6S   ]� 5      .+�5      �� -   5        	 ��Name$	 loginAsGuestButton��5      $��5q�65   $
��Left=�6A   $��0 10 0 0q�6\   $��16(�6n   .��6�   Войти как гость6�   �� 5      -   5        $	 loginButton��5      $��5q�6.   $��Right=�6:   $��0 10 0 0q�6V   $��16(�6h   .��6�   
Войти6�   5      5      �� 5    
   -   5        
 ��Name$
 canvas��5       $��2��6!   $��1��6.   $	��100��6>   $
��Left=�6J   $��10q�6e   6s   �� 5!   
   -   5         ��Name$ captchaBlock��5!      $��2��6+   $��1��68   $��Right=�6H   $	��200��6d   .+�5"      �� -   5        $ captchaAnswer��5"      6/   �� 5#      -	   5        $	 submitCaptcha��5#      $��3q�6,   $��Right=�67   $��70��6o   .��6z   Ответить6�   5$      5&      5'      