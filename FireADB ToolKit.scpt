FasdUAS 1.101.10   ��   ��    k             j     �� �� $0 defaultproxyport defaultProxyPort  m        � 	 	  8 8 8 8   
  
 l     ��������  ��  ��        l     ��  ��    0 * Try to determine the adb path dynamically     �   T   T r y   t o   d e t e r m i n e   t h e   a d b   p a t h   d y n a m i c a l l y      l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �  � 
 i f   s o u r c e   ~ / . b a s h _ p r o f i l e   & &   w h i c h   a d b   >   / d e v / n u l l ;   t h e n 
       w h i c h   a d b 
 e l i f   s o u r c e   ~ / . z s h r c   & &   w h i c h   a d b   >   / d e v / n u l l ;   t h e n 
       w h i c h   a d b 
 e l i f   s o u r c e   ~ / . b a s h r c   & &   w h i c h   a d b   >   / d e v / n u l l ;   t h e n 
       w h i c h   a d b 
 e l s e 
       e c h o   ' a d b   n o t   f o u n d ' 
 f i��    o      ���� 0 adbpath adbPath��  ��        l     ��������  ��  ��        l     ��  ��      Check if adb was found     �   .   C h e c k   i f   a d b   w a s   f o u n d     !   l     "���� " Z      # $���� # =    % & % o    	���� 0 adbpath adbPath & m   	 
 ' ' � ( (  a d b   n o t   f o u n d $ k     ) )  * + * I   �� , -
�� .sysodlogaskr        TEXT , m     . . � / / � A D B   n o t   f o u n d .   P l e a s e   e n s u r e   i t ' s   i n s t a l l e d   a n d   a v a i l a b l e   i n   P A T H . - �� 0 1
�� 
btns 0 J     2 2  3�� 3 m     4 4 � 5 5  B a c k��   1 �� 6��
�� 
dflt 6 m     7 7 � 8 8  B a c k��   +  9�� 9 L    ����  ��  ��  ��  ��  ��   !  : ; : l     ��������  ��  ��   ;  < = < l  ! >���� > T   ! ? ? k   &� @ @  A B A l  & &�� C D��   C  
 Main Menu    D � E E    M a i n   M e n u B  F G F r   & 3 H I H J   & / J J  K L K m   & ' M M � N N 6 F i n d   F i r e T V   a n d   a d b   c o n n e c t L  O P O m   ' ( Q Q � R R   C o n n e c t   t o   p r o x y P  S T S m   ( ) U U � V V  V e r i f y   p r o x y T  W X W m   ) * Y Y � Z Z  D e l e t e   p r o x y X  [�� [ m   * + \ \ � ] ] & L a u n c h   C o n t r o l P a n e l��   I o      ���� 0 options   G  ^ _ ^ r   4 M ` a ` I  4 I�� b c
�� .gtqpchltns    @   @ ns   b o   4 7���� 0 options   c �� d e
�� 
appr d m   : = f f � g g " F i r e   T V   A D B   t o o l s e �� h��
�� 
inSL h J   @ E i i  j�� j m   @ C k k � l l 6 F i n d   F i r e T V   a n d   a d b   c o n n e c t��  ��   a o      ���� 
0 choice   _  m n m l  N N��������  ��  ��   n  o p o Z   N f q r�� s q =  N S t u t o   N Q���� 
0 choice   u m   Q R��
�� boovfals r k   V W v v  w x w l  V V�� y z��   y   User pressed "Cancel"    z � { { ,   U s e r   p r e s s e d   " C a n c e l " x  |�� |  S   V W��  ��   s r   Z f } ~ } n   Z b  �  4   ] b�� �
�� 
cobj � m   ` a����  � o   Z ]���� 
0 choice   ~ o      ���� 
0 choice   p  � � � l  g g��������  ��  ��   �  � � � l  g g�� � ���   � + % Perform actions based on user choice    � � � � J   P e r f o r m   a c t i o n s   b a s e d   o n   u s e r   c h o i c e �  ��� � Z   g� � � ��� � =  g n � � � o   g j���� 
0 choice   � m   j m � � � � � 6 F i n d   F i r e T V   a n d   a d b   c o n n e c t � k   q � � �  � � � l  q q�� � ���   �   Finding Fire TV IP    � � � � &   F i n d i n g   F i r e   T V   I P �  � � � r   q | � � � I  q x�� ���
�� .sysoexecTEXT���     TEXT � m   q t � � � � � b a r p   - a   |   a w k   ' / 3 c : e 4 : 4 1 /   { p r i n t   $ 2 } '   |   t r   - d   ' ( ) '��   � o      ���� 0 firetvip fireTVIP �  � � � l  } }�� � ���   �   Connecting via adb    � � � � &   C o n n e c t i n g   v i a   a d b �  � � � r   } � � � � I  } ��� ���
�� .sysoexecTEXT���     TEXT � b   } � � � � b   } � � � � b   } � � � � o   } ~���� 0 adbpath adbPath � m   ~ � � � � � �    c o n n e c t   � o   � ����� 0 firetvip fireTVIP � m   � � � � � � � 
 : 5 5 5 5��   � o      ���� $0 adbconnectresult adbConnectResult �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � $ F i r e   T V   f o u n d   a t :   � o   � ����� 0 firetvip fireTVIP � 1   � ���
�� 
lnfd � o   � ����� $0 adbconnectresult adbConnectResult � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  B a c k��   � �� ���
�� 
dflt � m   � � � � � � �  B a c k��  ��   �  � � � =  � � � � � o   � ����� 
0 choice   � m   � � � � � � �   C o n n e c t   t o   p r o x y �  � � � k   �z � �  � � � l  � ��� � ���   � ' ! Prompt the user for the Proxy IP    � � � � B   P r o m p t   t h e   u s e r   f o r   t h e   P r o x y   I P �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � �  E n t e r   P r o x y   I P : � �� � �
�� 
dtxt � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � \ i f c o n f i g   e n 0   |   g r e p   ' i n e t   '   |   a w k   ' { p r i n t   $ 2 } '��  ��  ��   � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  B a c k �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��   � o      ���� 0 proxydialog proxyDialog �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 proxydialog proxyDialog � m   � � � � � � �  B a c k � L   � �����  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � �  � n   � � 1   � ���
�� 
ttxt o   � ����� 0 proxydialog proxyDialog  o      ���� 0 macip macIP �  l ��������  ��  ��    l ����   ) # Prompt the user for the Proxy Port    �		 F   P r o m p t   t h e   u s e r   f o r   t h e   P r o x y   P o r t 

 r  % I !��
�� .sysodlogaskr        TEXT m   � " E n t e r   P r o x y   P o r t : ��
�� 
dtxt o  	���� $0 defaultproxyport defaultProxyPort ��
�� 
btns J    m   �  B a c k �� m   �  O K��   ����
�� 
dflt m   �    O K��   o      ���� 0 
portdialog 
portDialog !"! l &&��������  ��  ��  " #$# Z  &:%&����% = &1'(' n  &-)*) 1  )-��
�� 
bhit* o  &)���� 0 
portdialog 
portDialog( m  -0++ �,,  B a c k& L  46����  ��  ��  $ -.- l ;;����~��  �  �~  . /0/ r  ;F121 n  ;B343 1  >B�}
�} 
ttxt4 o  ;>�|�| 0 
portdialog 
portDialog2 o      �{�{ 0 	proxyport 	proxyPort0 565 l GG�z�y�x�z  �y  �x  6 787 I G\�w9�v
�w .sysoexecTEXT���     TEXT9 b  GX:;: b  GT<=< b  GP>?> b  GL@A@ o  GH�u�u 0 adbpath adbPathA m  HKBB �CC L   s h e l l   s e t t i n g s   p u t   g l o b a l   h t t p _ p r o x y  ? o  LO�t�t 0 macip macIP= m  PSDD �EE  :; o  TW�s�s 0 	proxyport 	proxyPort�v  8 F�rF I ]z�qGH
�q .sysodlogaskr        TEXTG b  ]lIJI b  ]hKLK b  ]dMNM m  ]`OO �PP 0 P r o x y   s e t   o n   F i r e   T V   t o  N o  `c�p�p 0 macip macIPL m  dgQQ �RR  :J o  hk�o�o 0 	proxyport 	proxyPortH �nST
�n 
btnsS J  mrUU V�mV m  mpWW �XX  B a c k�m  T �lY�k
�l 
dfltY m  svZZ �[[  B a c k�k  �r   � \]\ = }�^_^ o  }��j�j 
0 choice  _ m  ��`` �aa  V e r i f y   p r o x y] bcb k  ��dd efe r  ��ghg I ���ii�h
�i .sysoexecTEXT���     TEXTi b  ��jkj o  ���g�g 0 adbpath adbPathk m  ��ll �mm J   s h e l l   s e t t i n g s   g e t   g l o b a l   h t t p _ p r o x y�h  h o      �f�f 0 currentproxy currentProxyf n�en I ���dop
�d .sysodlogaskr        TEXTo b  ��qrq m  ��ss �tt D C u r r e n t   p r o x y   s e t t i n g   o n   F i r e   T V :  r o  ���c�c 0 currentproxy currentProxyp �buv
�b 
btnsu J  ��ww x�ax m  ��yy �zz  B a c k�a  v �`{�_
�` 
dflt{ m  ��|| �}}  B a c k�_  �e  c ~~ = ����� o  ���^�^ 
0 choice  � m  ���� ���  D e l e t e   p r o x y ��� k  ���� ��� I ���]��\
�] .sysoexecTEXT���     TEXT� b  ����� o  ���[�[ 0 adbpath adbPath� m  ���� ��� P   s h e l l   s e t t i n g s   p u t   g l o b a l   h t t p _ p r o x y   : 0�\  � ��Z� I ���Y��
�Y .sysodlogaskr        TEXT� m  ���� ��� 6 P r o x y   d e l e t e d   f r o m   F i r e   T V .� �X��
�X 
btns� J  ���� ��W� m  ���� ���  B a c k�W  � �V��U
�V 
dflt� m  ���� ���  B a c k�U  �Z  � ��� = ����� o  ���T�T 
0 choice  � m  ���� ��� & L a u n c h   C o n t r o l P a n e l� ��S� k  ���� ��� I ���R��Q
�R .sysoexecTEXT���     TEXT� b  ����� o  ���P�P 0 adbpath adbPath� m  ���� ��� ^   s h e l l   a m   s t a r t   - n   c o m . a m a z o n . s s m / . C o n t r o l P a n e l�Q  � ��O� I ���N��
�N .sysodlogaskr        TEXT� m  ���� ��� B C o n t r o l P a n e l   l a u n c h e d   o n   F i r e   T V .� �M��
�M 
btns� J  ���� ��L� m  ���� ���  B a c k�L  � �K��J
�K 
dflt� m  ���� ���  B a c k�J  �O  �S  ��  ��  ��  ��   = ��I� l     �H�G�F�H  �G  �F  �I       
�E� ����D�C�B�A�E  � �@�?�>�=�<�;�:�9�@ $0 defaultproxyport defaultProxyPort
�? .aevtoappnull  �   � ****�> 0 adbpath adbPath�= 0 options  �< 
0 choice  �;  �:  �9  � �8��7�6���5
�8 .aevtoappnull  �   � ****� k    ��  ��   ��  <�4�4  �7  �6  �  � M �3�2 ' .�1 4�0 7�/�. M Q U Y \�-�,�+ f�* k�)�(�' � ��& � ��% ��$ � � � ��# � � � ��"�!�  ����+�BDOQWZ`l�sy|����������
�3 .sysoexecTEXT���     TEXT�2 0 adbpath adbPath
�1 
btns
�0 
dflt�/ 
�. .sysodlogaskr        TEXT�- �, 0 options  
�+ 
appr
�* 
inSL
�) .gtqpchltns    @   @ ns  �( 
0 choice  
�' 
cobj�& 0 firetvip fireTVIP�% $0 adbconnectresult adbConnectResult
�$ 
lnfd
�# 
dtxt�" �! 0 proxydialog proxyDialog
�  
bhit
� 
ttxt� 0 macip macIP� 0 
portdialog 
portDialog� 0 	proxyport 	proxyPort� 0 currentproxy currentProxy�5�j E�O��  ���kv��� 
OhY hO�hZ�����a vE` O_ a a a a kv� E` O_ f  Y _ a k/E` O_ a   Da j E` O�a %_ %a %j E` Oa _ %_  %_ %�a !kv�a "� 
YM_ a #  �a $a %a &j �a 'a (lv�a )a * 
E` +O_ +a ,,a -  hY hO_ +a .,E` /Oa 0a %b   �a 1a 2lv�a 3a * 
E` 4O_ 4a ,,a 5  hY hO_ 4a .,E` 6O�a 7%_ /%a 8%_ 6%j Oa 9_ /%a :%_ 6%�a ;kv�a <� 
Y �_ a =  (�a >%j E` ?Oa @_ ?%�a Akv�a B� 
Y S_ a C   �a D%j Oa E�a Fkv�a G� 
Y +_ a H   �a I%j Oa J�a Kkv�a L� 
Y h[OY�$� ��� h / U s e r s / s k i r a n / L i b r a r y / A n d r o i d / s d k / p l a t f o r m - t o o l s / a d b� ��� �   M Q U Y \
�D boovfals�C  �B  �A  ascr  ��ޭ