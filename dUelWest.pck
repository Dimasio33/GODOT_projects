GDPC                                                                            1   @   res://.import/arroy.png-569d926d972547b18d2b7a2792975ee9.stex   P4      �       W��R/T��R�w�<   res://.import/body.png-4ec8e781454edc07290c6085c71c48b4.stex�7            ��P�ƣ&��d*�R�<   res://.import/bul.png-b59c6205eac4cec7c091bac8445f5015.stex �;      �       m��~Y�=�V�ߓ߀�@   res://.import/graph.png-17c7d7bbcfa055f231b1ff71139fbe4b.stex   �>      �      0��\4�[i��eM�<   res://.import/hand.png-56e5f037390cba127930796a33d0cd35.stex�]            ;�c5� �!%�:>�?��<   res://.import/head.png-9633a42a94f96687903dbaa2ff2ba1d5.stex a      �      �����F�
�1��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      :      (;���`^�1�g��   res://default_env.tres  p      �       vl�Uu����9   res://effects/Bul.tscn  P            �9��m�񕅀�/�L�   res://effects/Bul_rain.tscn `      |      �Y3I��^Z^����I   res://effects/Hit.tscn  �      �      0�M1C7����^��4|   res://icon.png  �u     #      �l�qᴡ��?eY^$F   res://icon.png.import   �1      �      �����%��(#AB�    res://images/arroy.png.import   P5      �      �����X��m� �k~�   res://images/body.png.import�8      �      }�N�(����l���   res://images/bul.png.import `<      �      �%r����DND!���    res://images/graph.png.import   �Z      �      t���j���[�� �   res://images/hand.png.import�^      �      ��Ut�-r�!�U\�   res://images/head.png.import�b      �      j\"�
T��Ѓ��Y��   res://project.binary�     �      �1�6.(\�*�cB9#�   res://scen/Game.tscn�e      �+      w��nTX]Y���Ӗ&�   res://scen/Game_2.tscn  0�      �)      �ɔ�ҎP"����7dt   res://scen/Info_game.tscn    �      V      "А	��q���wMA�*�   res://scen/Menu.tscn��      o	      k���֊��?��   res://scen/Seting.tscn  ��      Y      v*xurEJ� �,\�   res://scen/Winer.tscn   P�      q      ��sϒhd��H����    res://scen/Winer_mission.tscn   ��      	      �7 ~!?�Zt�:ڮ!-   res://scripts/COMP.gd.remap @t     '       {�Y=|���i��w�   res://scripts/COMP.gdc  ��      �      ^������'<�I�K@)�    res://scripts/Control.gd.remap  pt     *       �C���]��V�דD":   res://scripts/Control.gdc   ��      e       �XS�S�޽ ��BW�$   res://scripts/Control_shot.gd.remap �t     /       ��g��d�Q6�Q�^    res://scripts/Control_shot.gdc  �      �      ���<�M�/QÖ<�H(   res://scripts/Controller_one.gd.remap   �t     1       T�Ґ���01H~�@+y    res://scripts/Controller_one.gdc��      j      -��l��]�_�R?Z�    res://scripts/Global.gd.remap   u     )       r}��38��j�Z	�Y   res://scripts/Global.gdc0     2      ��~���3��+��j��    res://scripts/Player.gd.remap   @u     )       �g��і��CY�e�<e�   res://scripts/Player.gdcp     �      ���c:��t��?(   res://scripts/Player_mission.gd.remap   pu     1       mx�c���T�+1��    res://scripts/Player_mission.gdcp     
      ��c/4	u��_��j�#    res://scripts/Puppet.gd.remap   �u     )       � Yug��N��r��   res://scripts/Puppet.gdc�     �      Q����h�]<A���   res://system/font.res   `     $      z������oL�!y   res://system/font_head.res  �     $      �ҭ+[��Mo�֥�ظ)   res://system/font_logo.res  �      *      ��ezbQ6a�J��z�O   res://system/font_smal.ttf  �!     hM      �JJ��D�}+�   res://system/has.res`o     )      ,N��΃��X�p k   res://system/my_theme.theme �p     �      ��ev��� �J8��7R�    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 1
background_sky = SubResource( 1 )
background_color = Color( 1, 0.752941, 0.501961, 1 )
        [gd_scene load_steps=3 format=2]

[ext_resource path="res://images/bul.png" type="Texture" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends TextureRect

var tim = 0


func _process(delta):
	tim += delta
	if tim >= 0.2:
		queue_free()
"

[node name="Bul" type="TextureRect"]
pause_mode = 2
margin_left = -8.0
margin_top = -8.0
margin_right = 8.0
margin_bottom = 8.0
rect_pivot_offset = Vector2( 8, 8 )
texture = ExtResource( 1 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
            [gd_scene load_steps=4 format=2]

[ext_resource path="res://images/bul.png" type="Texture" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends Control

var tim = 0


func _process(delta):
	tim += delta
	if tim >= 1:
		queue_free()
"

[sub_resource type="Animation" id=2]
resource_name = "go"
length = 0.7
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Bul3:visible")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.2 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ true, false ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("Bul:visible")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0.2, 0.4 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ true, false ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("Bul2:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0.5, 0.7 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ true, false ]
}

[node name="Bul_rain" type="Control"]
pause_mode = 2
margin_right = 40.0
margin_bottom = 40.0
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bul" type="TextureRect" parent="."]
pause_mode = 2
visible = false
margin_left = -8.0
margin_top = -8.0
margin_right = 8.0
margin_bottom = 8.0
rect_pivot_offset = Vector2( 8, 8 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bul2" type="TextureRect" parent="."]
pause_mode = 2
visible = false
margin_top = -16.0
margin_right = 16.0
rect_pivot_offset = Vector2( 8, 8 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Bul3" type="TextureRect" parent="."]
pause_mode = 2
margin_left = -16.0
margin_top = -16.0
rect_pivot_offset = Vector2( 8, 8 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Anim" type="AnimationPlayer" parent="."]
autoplay = "go"
anims/go = SubResource( 2 )
    [gd_scene load_steps=4 format=2]

[ext_resource path="res://system/font_smal.ttf" type="DynamicFontData" id=1]

[sub_resource type="DynamicFont" id=1]
outline_size = 1
outline_color = Color( 0, 0, 0, 1 )
font_data = ExtResource( 1 )

[sub_resource type="GDScript" id=2]
script/source = "extends Label


var tim = 0

func _process(delta):
	tim += delta
	rect_position.y -= tim * 0.5
	if tim > 1:
		queue_free()
"

[node name="Control" type="Label"]
pause_mode = 2
anchor_right = 1.0
anchor_bottom = 1.0
custom_fonts/font = SubResource( 1 )
custom_colors/font_color = Color( 1, 0.427451, 0.427451, 1 )
text = "-0"
script = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}
       GDST                PNG �PNG

   IHDR         \r�f   sRGB ���  �IDATx����r��v��8(R)��U���:Uy�<Z� /�lW*cω&E���Nc�%<b�_�C�6~b��^���HIZ׿ u�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )��� 5��dE�ʋ��k���Kt�{^; u"�
���0�&���Lmӑ�[[�e0΁@�H��0ǗM����(������i��3� g� �N$Y�M���&���x��ڟ�st �cp?ֻ��� �N���Q�G?��˞�g�ӧ�:�)�@�0 �� D
c )�@�0 �� D
c )�@�0 �� D
c )�@�0 ��8�."�rDIV�^����3d{�gy/L�ts|6Sđ���2t~v��."J2����|�W>��2�b���0�!ߌ�q�o�I�c�H�Oc3�gnm��0 �"�$÷������?>���f�t�� 3`P���4�<�X�г �7:~�0 L�!�#�����a �EDI����?>��_��/��t����Z0����$����kl7�r.�3į�.�
W�p��;���/�0t��5w����M��K/�,�c�����$��G)� ˥��a��a��a�  {'� �Rr��Ei��[F�j�� �W~�~���p��{�	[}��tԫ�[�} `�ǘo�^�~o�J�5�����?܍���w4?�ǹ���0����V1 ި���*��U����1(�(���j0�^����M�e�υ��������e�n:�1�V����2`��H�|�G���-7!�(m�ߠ oTS��>�c$b:��)�4E�eH�to �]�a���C|Z���L��EڶG`��u|q�^_��gt��F5���`w�bv7��q#I�q�,�?�G�u�C����p���E�O��.��0m{��������3�mz�4�OD� x��j���`:���n����9D���a"M��a�F�,��ic�Zb�t�Y-~��m{���������^��]�����c�0�m| =ն�_IM~GF��B31�v���< �i
�D\�D�/}�Cz���w
���1`�S�q�Oj_�ay����sa �T�0����eY����aH�EQ ���? E�4M�1�]@�������E��OF�Q=�,��1��땋����8�v�EE�3b �T����iÀaHӴ|eY�l dY�8���0L&ض��"ԑ�#��ab��b�\�Ǡ���2DQ� 83@O���G�S��<ϑ$	�4E�$兿o	� y�#MS��41�`�&4M:��G��,CE�zV�5����_��%��'��υ�b�?��aB3Gp�7����po��5Ĳ��	F�MӰ�|$0��x=��w?/
��C �~=@�2 =!��_Vы5�h4�l6�m����i�<�N�TK�}e�`0����> �a���*]�a�6f��m~�@�|]nk=�@O�5��M_��Mӄm�p�� k�����j����Ņ/6= ���T�e!I�]|�G�ib�z����k�Ǡx���4���~) D3P�����~�/n��[�e�`8b2�<	�G���}���@G�j~7~��i�4����# �=�<Ϲ�� i��m�/��MDW_��%�k�TK��ʀ��=I�'�$ɮ�Y��v��� �HSͯ��k�&�u}q�� ��ChK��IX�	�a����7@� i����͋5~��'�X
l�@,��B[r�������v���@�@G�y��n1�������oK��y���n��ˣ�m7�D&��;�CU0 �Թ�t�3O�p�ν�k�x�+u�} ]���` \����u�2dcW��g�\��F���!�j{�3O�p!�^��u�@&��m��C@A��oG r�uY�� d� �q�Z�xbV!]�Bν�/�z�L�`ۻ�Q�uݣ�?�p"mg�]b���!��T�l�[k��_������  ��	�a '�v�ߩk�&y���@E{ǂ[�U���{�� 8��3�N]�7�y|�Rs��Y�觸�o@?0 N���S��M�<GE�}���ɔ_˲ �~n�	��@r��q���|���>	���{����%I�$I�ɺ���i���e=��@�)T� ŧ����c�;+p�� ��p ���8�vz�]^������|%IM�0�Lp{{��.��lz�W.�Zܲ����~` H��?η��o���� �v��f�)o�'�	��)���F_��l6�l6�^q�k���(N�/���p ���8w;=�.������v�u�Z�`�&noo1�N���L&���"$��-<�+o��> ��}��/�Jmk�s�W�GQT.�U;�b��x<���MU���u]���! I��wEQ��������� �a ��[����1�������s ��� �罩� ���Jo�濹�)_/ �{��^o�'�� �a ��[��ooo�~/�x��z��vz�p�����Ա5�����x|�:�\�W��+���m��1]����h#���~��6�<ϱX,0�$	�0,����V_���8v^ ����ck~���qض��dr�9��v���l�e0 �ql�/���f3�f�r�����۹�#���� xƱ5������L&��n�~� �\��r�u~��m���55�|�$�,�v�q�'��	8���t
�4aYV��7?��� �t��SM5�|�_�y����}A���{� ����j~�|���_��ߤi_@����)H�� 試�_>�?[��7i�P���Fg�)H���2=V��'?�C\p����_��ߤi_@EH���#�׌<�LA:ޛ)�@�0 ����1�6.�h�Z[����i�(
�q�u˯����j�!MS���8�QE��L�,�����\�7@OU�����e4M+��(zn6 �	?ե�����4��ˀy��CCǁeY�4�$]�������b �����:�X�����8�Ig��`�ݖ���:����_a�X�69�S���������F @1 zJ\P�V^,�[s b��)��r/�X�oK�b���� 0��8��������h4*?��0.��� x��k[�#|�7>�O&��a���h���]8����@Q��1�O�1�%v����f�0al�.�8�5��j����=�C�噇&��wc�MG[ǁ������0sʱR3�<<_��e� (��AP�ж9����S���ߗ8�/&A𪿟e�x��w3 g~}��ofx�9���?y�b <�2u���l��S�8���r��s�,+g�-��V|8֞��M=�K;u�/�}�V+�V+��[�k������<�of���
� x��e�}����0X�9�D|��e9�lq\����������1}�����J�&�;������aR+	h?�3]��*�d�+�_�|�'P=����Դ�}Vu���}m���?��G�ϯ�L<���r�����>�|M����^�V�W:�'pn��h���5���� x�c{�v쾀���]c��W:�'pn��h���5���� x�c{���Y �8m1���<l�[���'}�u�a�y)�+E��˽���σp��{ǞX,��'�׽���σp��{Ǟ�/Z1f��{�Y��@]��=+ ?h�4�^��g��5����#��d�CG�0�[���=+ �{Qվ�(�ƚ����2y��Бa2�Q�s0����n̚� '"��������@�!�"�f����: k��wpɚ_���'!�"�/�,���=������5�0 ND�	xQ}{�d�����1�|�"�y�� Y۞���V�������	~yg��w~��`b�/�e��?���=y��* ~_`��b�Zwѡgdm{�o�Q_�����a�����Ϸ��?�㧙]{��H�� 8�}=�Ͽ.��41�� (`"A���- ��G��s����5�);�r��{��m?L���<L�mf��1k�a \��#���I{��SzD�/�
�{�@��!$�@$��s���j�������{_V�I{�����'�� ������d"�ԡC�4���Y��;� ��G���;iO@~���^�a����}���k~ �'u���g�5���܏Y�w�p!r� �rLlz�"|x!���w�y3��[�O3�5G WB� J QË@<eXV��߯�C% ��_�����&���6� �C��l�[�js�p= Wb�>�j/>��-?@��T��9�ׇ�����8���St�U�Gp�y��;{���=� �ȹ�4�h�p�9�\��'@Gν/��s�=����� �ȹ��}�����sݿ� �wvॳ��#/6�!�j T���aU����0 z��'�Z��o�f�G��z�,�|A�A �� ��ˁ�gUk|y����5�� 艦�����W�{W������^�`_ T��5��~,LF:k�7��M=�/�~�����Z�D�/�������e@q' ��򣼊wk�7��M=�0��4��ąE�0D�eGߕ�뺎4M�$	�$A�ĵߔ��ɚ�m` �T��q���$	�8��ie`8��k��[|�h�<�����p������j;cp��=��eA��2 L�l� I�2 \�EE�3S���+� 詶3?/�Z�/>��c���6� ��@E�l6�}��/�n�~W��Smg�� ��:d��:2$��8p�G ��<70Mb��`�����
k��� x�����_=�7����& k|�0 ިc{Mc�Y㫁�F�#h�_�+��#h�_�+��#h�_�+��#h�_�+��#  Nc$R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R�Ha "�1 ��  R��fů>��+k    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST                 �   PNG �PNG

   IHDR           szz�   sRGB ���   �IDATX���� E�q#�������I�����	�T����m��q�{W����t          ����"�t� P�q4�+��Q)?8�� c
�l�S!�*�:1�Q���2mH3�]W'� DA\�?Ɓ;�%AB�����awp�M qC�ư��    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arroy.png-569d926d972547b18d2b7a2792975ee9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/arroy.png"
dest_files=[ "res://.import/arroy.png-569d926d972547b18d2b7a2792975ee9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST                 �   PNG �PNG

   IHDR           szz�   sRGB ���   �IDATX��A� E����l^�V6��� .�/��E��r���H-�UBJ)< ���Z�h��S�U���f֑��8ۇa ����� ��I�`g8���+�
L� - �y(���O��]�N��넵P���bl���h�Xdxt i�0Y��Փ�-���    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/body.png-4ec8e781454edc07290c6085c71c48b4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/body.png"
dest_files=[ "res://.import/body.png-4ec8e781454edc07290c6085c71c48b4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   vIDAT8��R�� ]	�� f���ԳT�~�	I8� ����C�c�=�$���M�U�"�j]W5�0 Pd�L�D�k`���/9s�M0�;(K�X=&3��gE̮���~|����#NB�*���A    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bul.png-b59c6205eac4cec7c091bac8445f5015.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/bul.png"
dest_files=[ "res://.import/bul.png-b59c6205eac4cec7c091bac8445f5015.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
          GDST�  �           �  PNG �PNG

   IHDR  �  �   w�t�   sRGB ���  �IDATx���A�  �@�r���@_dɝ�>��w�  ��  �O4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4      �� ��@ @`�  0�  h  4     |�ֱ    � �1�/��A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �A� `h    � �~��e    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/graph.png-17c7d7bbcfa055f231b1ff71139fbe4b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/graph.png"
dest_files=[ "res://.import/graph.png-17c7d7bbcfa055f231b1ff71139fbe4b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST                 �   PNG �PNG

   IHDR           szz�   sRGB ���   �IDATX���	� F?�)��9�9n&װ?i�%y������)4�Z{k�s 0�`���T@k]��GE	���cL�� Qr�X�Fgs�% ����	0$�.{L�	w�O����k�=���eII����`��o�oJ����ϝ8��ɧ�����"	 u)�� ��p�M��    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/hand.png-56e5f037390cba127930796a33d0cd35.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/hand.png"
dest_files=[ "res://.import/hand.png-56e5f037390cba127930796a33d0cd35.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST                 �  PNG �PNG

   IHDR           szz�   sRGB ���  jIDATX���q� E�3��g*����Ũ�i#��2v3�!��;��?$��_�f=���T���{ f�gA^5��� �6�A� &̿F�,�V7i|� ��CJ� ��vxp�j��9�  )%5v�6��ȼ�j3 u�!>z�s�����쓛, ��[k�j��Wo<��T�9�n͋�D�=3*��33��B  ���b��9 �@Dj3�;�(�+�9%��}Qɂt�d(潯M�*�����+ [3�o�V�Y�T��������90�b%�EcwG����g�=��9���P��0|+I�~��dO����حԕ���X���*��k	`bJ�k�!|��2x.x    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/head.png-9633a42a94f96687903dbaa2ff2ba1d5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/head.png"
dest_files=[ "res://.import/head.png-9633a42a94f96687903dbaa2ff2ba1d5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       [gd_scene load_steps=17 format=2]

[ext_resource path="res://images/body.png" type="Texture" id=1]
[ext_resource path="res://images/hand.png" type="Texture" id=2]
[ext_resource path="res://images/head.png" type="Texture" id=3]
[ext_resource path="res://system/font.res" type="DynamicFont" id=4]
[ext_resource path="res://scripts/Player_mission.gd" type="Script" id=5]
[ext_resource path="res://scripts/Controller_one.gd" type="Script" id=6]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=7]
[ext_resource path="res://scripts/COMP.gd" type="Script" id=8]

[sub_resource type="Animation" id=1]
resource_name = "dead"
length = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 40 ), Vector2( 164, -100 ) ]
}

[sub_resource type="Animation" id=2]
length = 1.2
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 40 ), Vector2( 164, -60 ), Vector2( -200, -60 ), Vector2( -200, 40 ), Vector2( 164, 40 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.3, 0.8, 1.1 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 0.0, -90.0, -90.0, 0.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:redy")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0, 1.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ false, true ]
}

[sub_resource type="Animation" id=3]
resource_name = "win"
length = 4.0
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0.3, 0.7, 4 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 40 ), Vector2( 158, 40 ), Vector2( -100, 40 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0.3, 0.7 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0.0, 90.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("Hand:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0.4 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}

[sub_resource type="Animation" id=4]
resource_name = "dead"
length = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 648 ), Vector2( 164, 750 ) ]
}

[sub_resource type="Animation" id=5]
length = 1.2
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 648 ), Vector2( 164, 750 ), Vector2( 600, 750 ), Vector2( 600, 648 ), Vector2( 164, 648 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.3, 0.8, 1.1 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 0.0, -90.0, -90.0, 0.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:redy")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0, 1.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ false, true ]
}

[sub_resource type="Animation" id=6]
resource_name = "win"
length = 4.0
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0.3, 0.7, 4 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 648 ), Vector2( 170, 648 ), Vector2( 400, 648 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0.3, 0.7 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0.0, 90.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("Hand:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0.4 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}

[sub_resource type="StyleBoxFlat" id=7]
bg_color = Color( 0.992157, 0.654902, 0.388235, 1 )

[sub_resource type="StyleBoxFlat" id=8]
bg_color = Color( 1, 0.929412, 0.698039, 1 )

[node name="Game" type="Control"]
pause_mode = 2
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 7 )
script = ExtResource( 6 )
__meta__ = {
"_edit_use_anchors_": false
}
player = NodePath("Scene/Player_1")

[node name="Scene" type="Control" parent="."]
pause_mode = 1
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Scene"]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -95.0
margin_top = 67.0
margin_right = 95.0
margin_bottom = 93.0
custom_colors/font_color = Color( 1, 0, 0, 1 )
text = "не честная игра!"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="COMP" type="TextureRect" parent="Scene"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -16.0
margin_top = 40.0
margin_right = 16.0001
margin_bottom = 72.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 16, 16 )
texture = ExtResource( 1 )
flip_h = true
flip_v = true
script = ExtResource( 8 )
__meta__ = {
"_edit_group_": true,
"_edit_use_anchors_": false
}
enemy_pith = NodePath("../Player_1")
bar_pith = NodePath("../../Grid_2")
redy = false

[node name="Hand" type="TextureRect" parent="Scene/COMP"]
visible = false
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 2 )
flip_h = true
flip_v = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Head" type="TextureRect" parent="Scene/COMP"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )
flip_h = true
flip_v = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="Scene/COMP"]

[node name="Anim" type="AnimationPlayer" parent="Scene/COMP"]
pause_mode = 2
autoplay = "new"
anims/dead = SubResource( 1 )
anims/new = SubResource( 2 )
anims/win = SubResource( 3 )

[node name="Player_1" type="TextureRect" parent="Scene"]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -16.0
margin_top = -71.9999
margin_right = 16.0
margin_bottom = -39.9999
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 16, 16 )
texture = ExtResource( 1 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true,
"_edit_use_anchors_": false
}
enemy_pith = NodePath("../COMP")
bar_pith = NodePath("../../Grid_1")

[node name="Hand" type="TextureRect" parent="Scene/Player_1"]
visible = false
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Head" type="TextureRect" parent="Scene/Player_1"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="Scene/Player_1"]

[node name="Anim" type="AnimationPlayer" parent="Scene/Player_1"]
pause_mode = 2
autoplay = "new"
anims/dead = SubResource( 4 )
anims/new = SubResource( 5 )
anims/win = SubResource( 6 )

[node name="Grid_2" type="GridContainer" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -60.0
margin_bottom = 120.0
rect_min_size = Vector2( 60, 120 )
custom_constants/vseparation = -5
custom_constants/hseparation = -7
columns = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Grid_1" type="GridContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -120.0
margin_right = 60.0
rect_min_size = Vector2( 60, 120 )
rect_scale = Vector2( 1, -1 )
rect_pivot_offset = Vector2( 30, 60 )
custom_constants/vseparation = -5
custom_constants/hseparation = -7
columns = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Center" type="Button" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.528
margin_top = -3.5
margin_bottom = -16.66
rect_min_size = Vector2( 0, 24 )
rect_pivot_offset = Vector2( 0, 12 )
custom_styles/hover = SubResource( 7 )
custom_styles/pressed = SubResource( 8 )
custom_styles/normal = SubResource( 7 )
custom_fonts/font = ExtResource( 4 )
text = "=="
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Pause" type="Panel" parent="."]
visible = false
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Menu" type="Button" parent="Pause"]
anchor_top = 0.886
anchor_right = 1.0
anchor_bottom = 0.887
margin_top = -25.92
margin_bottom = 25.36
rect_pivot_offset = Vector2( 180, 26 )
text = "в меню"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Continue" type="Button" parent="Pause"]
anchor_top = 0.733
anchor_right = 1.0
anchor_bottom = 0.733
margin_top = -25.76
margin_bottom = 26.24
text = "продолжить"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Pause" type="Label" parent="Pause"]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = -26.0
margin_bottom = 26.0
custom_colors/font_color_shadow = Color( 1, 0.756863, 0.160784, 1 )
text = "ПАУЗА"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
[connection signal="timeout" from="Scene/COMP/Timer" to="Scene/COMP" method="_on_Timer_timeout"]
[connection signal="timeout" from="Scene/Player_1/Timer" to="Scene/Player_1" method="_on_Timer_timeout"]
[connection signal="pressed" from="Center" to="." method="_on_Center_pressed"]
[connection signal="pressed" from="Pause/Menu" to="." method="_on_Menu_pressed"]
[connection signal="pressed" from="Pause/Continue" to="." method="_on_Continue_pressed"]
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
               [gd_scene load_steps=12 format=2]

[ext_resource path="res://images/body.png" type="Texture" id=1]
[ext_resource path="res://images/hand.png" type="Texture" id=2]
[ext_resource path="res://images/head.png" type="Texture" id=3]
[ext_resource path="res://system/font.res" type="DynamicFont" id=4]
[ext_resource path="res://scripts/Player.gd" type="Script" id=5]
[ext_resource path="res://scripts/Control_shot.gd" type="Script" id=6]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=7]

[sub_resource type="Animation" id=1]
resource_name = "new"
length = 1.2
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 40 ), Vector2( 164, -60 ), Vector2( -200, -60 ), Vector2( -200, 40 ), Vector2( 164, 40 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.3, 0.8, 1.1 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 0.0, -90.0, -90.0, 0.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:redy")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0, 1.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ false, true ]
}

[sub_resource type="Animation" id=2]
resource_name = "new"
length = 1.2
tracks/0/type = "value"
tracks/0/path = NodePath(".:rect_position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 164, 648 ), Vector2( 164, 750 ), Vector2( 600, 750 ), Vector2( 600, 648 ), Vector2( 164, 648 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:rect_rotation")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.3, 0.8, 1.1 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 0.0, -90.0, -90.0, 0.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:redy")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0, 1.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ false, true ]
}

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 0.992157, 0.654902, 0.388235, 1 )

[sub_resource type="StyleBoxFlat" id=4]
bg_color = Color( 1, 0.929412, 0.698039, 1 )

[node name="Game_2" type="Control"]
pause_mode = 2
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 7 )
script = ExtResource( 6 )
__meta__ = {
"_edit_use_anchors_": false
}
player1 = NodePath("Scene/Player_1")
player2 = NodePath("Scene/Player_2")

[node name="Scene" type="Control" parent="."]
pause_mode = 1
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player_2" type="TextureRect" parent="Scene"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -380.0
margin_top = 40.0
margin_right = -348.0
margin_bottom = 72.0
rect_rotation = -90.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 16, 16 )
texture = ExtResource( 1 )
flip_h = true
flip_v = true
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true,
"_edit_use_anchors_": false
}
player2 = true
enemy_pith = NodePath("../Player_1")
bar_pith = NodePath("../../Grid_2")
redy = false

[node name="Hand" type="TextureRect" parent="Scene/Player_2"]
visible = false
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 2 )
flip_h = true
flip_v = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Head" type="TextureRect" parent="Scene/Player_2"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )
flip_h = true
flip_v = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="Scene/Player_2"]

[node name="Anim" type="AnimationPlayer" parent="Scene/Player_2"]
autoplay = "new"
anims/new = SubResource( 1 )

[node name="Player_1" type="TextureRect" parent="Scene"]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = 420.0
margin_top = -72.0
margin_right = 452.0
margin_bottom = -40.0
rect_rotation = -90.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 16, 16 )
texture = ExtResource( 1 )
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true,
"_edit_use_anchors_": false
}
enemy_pith = NodePath("../Player_2")
bar_pith = NodePath("../../Grid_1")
redy = false

[node name="Hand" type="TextureRect" parent="Scene/Player_1"]
visible = false
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Head" type="TextureRect" parent="Scene/Player_1"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="Scene/Player_1"]

[node name="Anim" type="AnimationPlayer" parent="Scene/Player_1"]
autoplay = "new"
anims/new = SubResource( 2 )

[node name="Grid_2" type="GridContainer" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -60.0
margin_bottom = 120.0
rect_min_size = Vector2( 60, 120 )
custom_constants/vseparation = -5
custom_constants/hseparation = -7
columns = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="L" type="TextureRect" parent="Grid_2"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )

[node name="L2" type="TextureRect" parent="Grid_2"]
margin_left = 25.0
margin_right = 57.0
margin_bottom = 32.0
texture = ExtResource( 3 )

[node name="L3" type="TextureRect" parent="Grid_2"]
margin_top = 27.0
margin_right = 32.0
margin_bottom = 59.0
texture = ExtResource( 3 )

[node name="L4" type="TextureRect" parent="Grid_2"]
margin_left = 25.0
margin_top = 27.0
margin_right = 57.0
margin_bottom = 59.0
texture = ExtResource( 3 )

[node name="L5" type="TextureRect" parent="Grid_2"]
margin_top = 54.0
margin_right = 32.0
margin_bottom = 86.0
texture = ExtResource( 3 )

[node name="L6" type="TextureRect" parent="Grid_2"]
margin_left = 25.0
margin_top = 54.0
margin_right = 57.0
margin_bottom = 86.0
texture = ExtResource( 3 )

[node name="L7" type="TextureRect" parent="Grid_2"]
margin_top = 81.0
margin_right = 32.0
margin_bottom = 113.0
texture = ExtResource( 3 )

[node name="L8" type="TextureRect" parent="Grid_2"]
margin_left = 25.0
margin_top = 81.0
margin_right = 57.0
margin_bottom = 113.0
texture = ExtResource( 3 )

[node name="Grid_1" type="GridContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -120.0
margin_right = 60.0
rect_min_size = Vector2( 60, 120 )
rect_scale = Vector2( 1, -1 )
rect_pivot_offset = Vector2( 30, 60 )
custom_constants/vseparation = -5
custom_constants/hseparation = -7
columns = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="L" type="TextureRect" parent="Grid_1"]
margin_right = 32.0
margin_bottom = 32.0
texture = ExtResource( 3 )

[node name="L2" type="TextureRect" parent="Grid_1"]
margin_left = 25.0
margin_right = 57.0
margin_bottom = 32.0
texture = ExtResource( 3 )

[node name="L3" type="TextureRect" parent="Grid_1"]
margin_top = 27.0
margin_right = 32.0
margin_bottom = 59.0
texture = ExtResource( 3 )

[node name="L4" type="TextureRect" parent="Grid_1"]
margin_left = 25.0
margin_top = 27.0
margin_right = 57.0
margin_bottom = 59.0
texture = ExtResource( 3 )

[node name="L5" type="TextureRect" parent="Grid_1"]
margin_top = 54.0
margin_right = 32.0
margin_bottom = 86.0
texture = ExtResource( 3 )

[node name="L6" type="TextureRect" parent="Grid_1"]
margin_left = 25.0
margin_top = 54.0
margin_right = 57.0
margin_bottom = 86.0
texture = ExtResource( 3 )

[node name="L7" type="TextureRect" parent="Grid_1"]
margin_top = 81.0
margin_right = 32.0
margin_bottom = 113.0
texture = ExtResource( 3 )

[node name="L8" type="TextureRect" parent="Grid_1"]
margin_left = 25.0
margin_top = 81.0
margin_right = 57.0
margin_bottom = 113.0
texture = ExtResource( 3 )

[node name="Center" type="Button" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.528
margin_top = -3.5
margin_bottom = -16.66
rect_min_size = Vector2( 0, 24 )
rect_pivot_offset = Vector2( 0, 12 )
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 3 )
custom_fonts/font = ExtResource( 4 )
text = "=="
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Pause" type="Panel" parent="."]
visible = false
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Menu" type="Button" parent="Pause"]
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = -76.0
margin_bottom = -24.0
rect_pivot_offset = Vector2( 180, 26 )
text = "в меню"

[node name="Continue" type="Button" parent="Pause"]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = -26.0
margin_bottom = 26.0
text = "=="
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Menu2" type="Button" parent="Pause"]
anchor_right = 1.0
margin_top = 24.0
margin_bottom = 76.0
rect_scale = Vector2( -1, -1 )
rect_pivot_offset = Vector2( 180, 26 )
text = "в меню"

[node name="Pause" type="Label" parent="Pause"]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = 126.0
margin_bottom = 178.0
custom_colors/font_color_shadow = Color( 1, 0.756863, 0.160784, 1 )
text = "ПАУЗА"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Pause2" type="Label" parent="Pause"]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = -178.0
margin_bottom = -126.0
rect_scale = Vector2( -1, -1 )
rect_pivot_offset = Vector2( 180, 26 )
custom_colors/font_color_shadow = Color( 1, 0.756863, 0.160784, 1 )
text = "ПАУЗА"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="timeout" from="Scene/Player_2/Timer" to="Scene/Player_2" method="_on_Timer_timeout"]
[connection signal="timeout" from="Scene/Player_1/Timer" to="Scene/Player_1" method="_on_Timer_timeout"]
[connection signal="pressed" from="Center" to="." method="_on_Center_pressed"]
[connection signal="pressed" from="Pause/Menu" to="." method="_on_Menu_pressed"]
[connection signal="pressed" from="Pause/Continue" to="." method="_on_Continue_pressed"]
[connection signal="pressed" from="Pause/Menu2" to="." method="_on_Menu_pressed"]
    [gd_scene load_steps=5 format=2]

[ext_resource path="res://system/has.res" type="DynamicFont" id=1]
[ext_resource path="res://system/font_head.res" type="DynamicFont" id=3]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=4]

[sub_resource type="GDScript" id=1]
script/source = "extends Control

func _ready():
	$Option.select(G.bandits)

func Winer(g):
	if g:
		$Win.visible = true
	else:
		$Lose.visible = true


func _on_reload_pressed():
	G.SceneLoad(G.S_GAME)
	queue_free()


func _on_Home_pressed():
	G.SceneLoad(G.S_MENU)
	G.wins = Vector2.ZERO
	queue_free()


func _on_Option_item_selected(index):
	G.bandits = index
	print(index)
"

[node name="Info_Game" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 4 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
anchor_top = 0.044
anchor_right = 1.0
anchor_bottom = 0.522
margin_top = 0.319998
margin_bottom = 0.160004
custom_fonts/font = ExtResource( 1 )
text = "Вы шериф!
стреляйте свайпом в бандита
только если он достал
оружие

от направления свайпа 
зависит направление выстрела

ВПЕРЁД!"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="reload" type="Button" parent="."]
anchor_top = 0.739
anchor_right = 1.0
anchor_bottom = 0.739
margin_left = 32.0
margin_top = -30.08
margin_right = -32.0
margin_bottom = 29.92
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "старт"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Home" type="Button" parent="."]
anchor_top = 0.892
anchor_right = 1.0
anchor_bottom = 0.892
margin_left = 32.0
margin_top = -30.24
margin_right = -32.0
margin_bottom = 29.76
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "в меню"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Option" type="OptionButton" parent="."]
anchor_top = 0.589
anchor_right = 1.0
anchor_bottom = 0.589
margin_left = 32.0
margin_top = -26.08
margin_right = -32.0
margin_bottom = 25.92
text = "1 бандит"
align = 1
items = [ "1 бандит", null, false, 0, null, "2 бандита", null, false, 1, null, "3 бандита", null, false, 2, null, "4 бандита", null, false, 3, null, "5 бандитов", null, false, 4, null, "6 бандитов", null, false, 5, null, "7 бандитов", null, false, 6, null, "8 бандитов", null, false, 7, null, "9 бандитов", null, false, 8, null ]
selected = 0
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="reload" to="." method="_on_reload_pressed"]
[connection signal="pressed" from="Home" to="." method="_on_Home_pressed"]
[connection signal="item_selected" from="Option" to="." method="_on_Option_item_selected"]
          [gd_scene load_steps=4 format=2]

[ext_resource path="res://system/font_logo.res" type="DynamicFont" id=1]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=2]

[sub_resource type="GDScript" id=1]
script/source = "extends Control


func _on_Start_pressed():
	G.SceneLoad(G.S_GAME_INFO)
	queue_free()


func _on_Gamer2_pressed():
	G.SceneLoad(G.S_GAME_2)
	queue_free()


func _on_Param_button_down():
	G.SceneLoad(G.S_SETINGS)
	queue_free()


func _on_Exit_pressed():
	get_tree().quit()
"

[node name="Menu" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 2 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Logo" type="Label" parent="."]
anchor_right = 1.0
margin_top = 48.0
margin_bottom = 130.0
custom_fonts/font = ExtResource( 1 )
text = "DuelWest"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Start" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -110.0
margin_top = -104.0
margin_right = 110.0
margin_bottom = -40.0
rect_min_size = Vector2( 220, 64 )
text = "играть"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Gamer2" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -110.0
margin_top = -16.0
margin_right = 110.0
margin_bottom = 48.0
rect_min_size = Vector2( 220, 64 )
text = "2 игрока"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Param" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -110.0
margin_top = 72.0
margin_right = 110.0
margin_bottom = 136.0
rect_min_size = Vector2( 220, 64 )
text = "настройки"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Exit" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -110.0
margin_top = 160.0
margin_right = 110.0
margin_bottom = 224.0
rect_min_size = Vector2( 220, 64 )
text = "выйти"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Start" to="." method="_on_Start_pressed"]
[connection signal="pressed" from="Gamer2" to="." method="_on_Gamer2_pressed"]
[connection signal="button_down" from="Param" to="." method="_on_Param_button_down"]
[connection signal="pressed" from="Exit" to="." method="_on_Exit_pressed"]
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://system/font_head.res" type="DynamicFont" id=1]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=2]

[sub_resource type="GDScript" id=1]
script/source = "extends Control


func _on_Save_Exit_pressed():
	G.SceneLoad(G.S_MENU)
	queue_free()
"

[node name="Seting" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 2 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
anchor_right = 1.0
margin_top = 48.0
margin_bottom = 125.0
custom_fonts/font = ExtResource( 1 )
text = "НАСТРОЙКИ"
align = 1

[node name="Save_Exit" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -140.0
margin_top = -32.0
margin_right = 140.0
margin_bottom = 32.0
rect_min_size = Vector2( 280, 64 )
custom_fonts/font = ExtResource( 1 )
text = "сохранить и выйти"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Save_Exit" to="." method="_on_Save_Exit_pressed"]
       [gd_scene load_steps=6 format=2]

[ext_resource path="res://system/font_logo.res" type="DynamicFont" id=1]
[ext_resource path="res://images/arroy.png" type="Texture" id=2]
[ext_resource path="res://system/font_head.res" type="DynamicFont" id=3]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=4]

[sub_resource type="GDScript" id=1]
script/source = "extends Control


func Winer(g):
	if g:
		$Arroy.rect_scale.y = -2
		G.wins.x += 1
	else:
		G.wins.y += 1
	
	$G_1.text = str(G.wins.x)
	$G_2.text = str(G.wins.y)


func _on_reload_pressed():
	G.SceneLoad(G.S_GAME_2)
	queue_free()


func _on_Home_pressed():
	G.SceneLoad(G.S_MENU)
	G.wins = Vector2.ZERO
	queue_free()
"

[node name="Winer" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 4 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="G_2" type="Label" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = -153.0
margin_bottom = -71.0
custom_fonts/font = ExtResource( 1 )
text = "0"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -163.0
margin_top = -41.0
margin_right = 163.0
margin_bottom = 41.0
custom_fonts/font = ExtResource( 1 )
text = "ВЫИГРАЛ"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Arroy" type="TextureRect" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -16.0
margin_top = -120.0
margin_right = 16.0
margin_bottom = 120.0
rect_min_size = Vector2( 0, 240 )
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 16, 120 )
texture = ExtResource( 2 )
flip_v = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="G_1" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -180.0
margin_top = 71.0
margin_right = 180.0
margin_bottom = 153.0
custom_fonts/font = ExtResource( 1 )
text = "0"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="reload" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -156.0
margin_top = -84.0
margin_right = -26.0
margin_bottom = -24.0
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "играть ещё"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="reload2" type="Button" parent="."]
margin_left = 152.0
margin_top = 88.0
margin_right = 282.0
margin_bottom = 148.0
rect_min_size = Vector2( 100, 60 )
rect_scale = Vector2( -1, -1 )
custom_fonts/font = ExtResource( 3 )
text = "играть ещё"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Home" type="Button" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_left = 24.0
margin_top = -84.0
margin_right = 160.0
margin_bottom = -24.0
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "в меню"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Home2" type="Button" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -24.0
margin_top = 88.0
margin_right = 112.0
margin_bottom = 148.0
rect_min_size = Vector2( 100, 60 )
rect_scale = Vector2( -1, -1 )
custom_fonts/font = ExtResource( 3 )
text = "в меню"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="reload" to="." method="_on_reload_pressed"]
[connection signal="pressed" from="reload2" to="." method="_on_reload_pressed"]
[connection signal="pressed" from="Home" to="." method="_on_Home_pressed"]
[connection signal="pressed" from="Home2" to="." method="_on_Home_pressed"]
               [gd_scene load_steps=5 format=2]

[ext_resource path="res://system/font_logo.res" type="DynamicFont" id=1]
[ext_resource path="res://system/font_head.res" type="DynamicFont" id=3]
[ext_resource path="res://system/my_theme.theme" type="Theme" id=4]

[sub_resource type="GDScript" id=1]
script/source = "extends Control


func Winer(g):
	if g:
		$Win.visible = true
	else:
		$Lose.visible = true


func _on_reload_pressed():
	G.SceneLoad(G.S_GAME)
	queue_free()


func _on_Home_pressed():
	G.SceneLoad(G.S_MENU)
	G.wins = Vector2.ZERO
	queue_free()
"

[node name="Winer" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 4 )
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Win" type="Label" parent="."]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -129.0
margin_top = -137.0
margin_right = 129.0
margin_bottom = -55.0
custom_fonts/font = ExtResource( 1 )
custom_colors/font_color = Color( 0.290196, 1, 0.270588, 1 )
text = "Победа"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Lose" type="Label" parent="."]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -161.0
margin_top = -137.0
margin_right = 161.0
margin_bottom = -55.0
custom_fonts/font = ExtResource( 1 )
custom_colors/font_color = Color( 1, 0.137255, 0.137255, 1 )
text = "Проиграл"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="reload" type="Button" parent="."]
anchor_top = 0.739
anchor_right = 1.0
anchor_bottom = 0.739
margin_left = 32.0
margin_top = -30.08
margin_right = -32.0
margin_bottom = 29.92
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "играть ещё"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Home" type="Button" parent="."]
anchor_top = 0.892
anchor_right = 1.0
anchor_bottom = 0.892
margin_left = 32.0
margin_top = -30.24
margin_right = -32.0
margin_bottom = 29.76
rect_min_size = Vector2( 100, 60 )
custom_fonts/font = ExtResource( 3 )
text = "в главное меню"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="reload" to="." method="_on_reload_pressed"]
[connection signal="pressed" from="Home" to="." method="_on_Home_pressed"]
        GDSC   3      ]   7     ����������¶   ���������޶�   �������޶���   ��Ķ   ���϶���   ����϶��   �����޶�   �����Ӷ�   �������Ҷ���   �����¶�   ��ض   ��������¶��   �����϶�   �������Ӷ���   �������Ŷ���   ����׶��   ���¶���   ���������Ҷ�   ���Ҷ���   ������Ӷ   ����   ��������̶��   �������������������ض���   ����������������¶��   �����Ŷ�   ���¶���   �������������¶�   ������������ض��   ����Ӷ��   ��¶   ����ݶ��   ����Ķ��   ����¶��   Զ��   񶶶   ��������Ҷ��   ��������   ������������ض��   ����������ٶ   ������Ҷ   ޶��   �ն�   ����ⶶ�   ���¶���   ���۶���   ���϶���   �����������ض���   ���������Ӷ�   ��ض   ��Ҷ   ����������������¶��         d           �������?      @     �?                                   �      Z         ?      -         new       ../..         dead  ffffff@  �������?   2         win                    
                              "   	   #   
   $      *      7      <      =      B      G      H      N      X      _      f      g      n      v      z      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )      *     +     ,     -     .     /   *  0   F  1   G  2   H  3   I  4   P  5   T  6   X  7   d  8   j  9   u  :   {  ;     <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K      L     M     N   	  O     P     Q     R     S     T     U      V   &  W   -  X   1  Y   2  Z   3  [   4  \   5  ]   3YY8P�  Q;�  Y8P�  Q;�  Y;�  Y8;�  Y;�  Y;�  �  YYY8;�  �  Y8P�  R�  R�  Q;�  �  Y;�	  �  YY;�
  �  Y;�  �  YY0�  PQV�  �  �	  �'  PQ�	  �  �  �  P�  Q�  �  �  P�  QYY0�  P�  QV�  &�  �  T�  V�  �  �  �  &�  
�
  V�  �  P�  PP�'  PQ�  QP�  �	  QR�  QT�  PQQ�  �  �	  �'  PQ�	  �  '�  
�  V�  W�  T�  �  �
  �  YY0�  P�  QV�  &�  �  T�  V�  ;�  �  T�  �  T�  �  ;�  �  �  �  ;�  �,  P�  T�  P�  QQ�  �  �  �,  P�  T�  PQQ�  �  �?  P�,  P�  T�  PQQQ�  �  T�  P�  P�  R�,  P�  T�  PQQQQ�  �  �  W�  T�   P�  Q�  �  ;�!  �"  T�#  P�"  T�$  Q�  �!  T�%  �  �  P�  T�&  P�  QR�
  QT�'  P�  T�  PQQ�  YYY0�  P�(  QV�  &�(  V�  �  �(  �  ;�)  �"  T�#  P�"  T�*  Q�  �)  T�  �  �  �)  T�+  �>  P�  R�(  Q�  &�  
�
  V�  �  �  �  �  �  �  W�,  T�-  P�  Q�  &�  T�.  PQV�  �  T�.  PQL�
  MT�/  PQ�  �  �	  �'  PQ�	  �  W�  T�  �  �  �
  �  �  (V�  W�  T�0  PQ�  W�,  T�-  P�  Q�  �  T�1  PQYY0�  P�  R�  QV�  �?  P�  P�  �  Q�  Q�  &�  
�  �  �  �  �  V�  &�  
�  �  �  �  �  V�  .�  �  (V�  .�  �  (V�  .�
  YYY0�1  PQV�  W�,  T�-  P�  QYY0�2  PQV�  W�  T�  �  �  �
  �  YYYYY`   GDSC            
      ������ڶ   ���޶���                               3YY;�  Y`           GDSC         -        ������ڶ   �����ć�   �����Ą�   ��Ň����   ��������   ��ń����   ������̶   �����϶�   �����Ķ�   ������������ض��   ϶��   �����¶�   ����¶��   �������Ӷ���   �����Ҷ�   ��������������������޶��   ���������Ҷ�   ƶ��   �������ض���   �������Ӷ���   ���¶���   ���������Ҷ�   �����������������Ҷ�   ����Ӷ��   ������Ӷ   ���������������Ҷ���   񶶶   ��������Ҷ��   �����㶶   ���������Ӷ�   �������������������Ҷ���   h                                        
                               !   	   &   
   '      -      6      7      >      G      M      U      \      d      h      r      v      y      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -   3YY8P�  Q;�  Y8P�  Q;�  YY;�  �  T�  Y;�  �  T�  YY;�  YY0�  PQV�  �  W�  T�	  T�
  YY0�  P�  QV�  &�  PQT�  V�  &�  4�  V�  &�  T�  PQV�  ;�  �  T�  �  &�  T�
  	�  V�  �  �  �  '�  T�
  �  �  V�  �  �  �  (V�  ;�  �  T�  �  &�  T�
  	�  V�  �  P�  QT�  PP�  �  QT�  PQQ�  '�  T�
  �  �  V�  �  P�  QT�  PP�  �  QT�  PQQYYYY0�  PQV�  �  PQT�  �  �  W�  T�  �  YYY0�  PQV�  �  PQT�  �  �  �  T�  P�  T�  Q�  �  PQYY0�  PQV�  �  PQT�  �  �  W�  T�  �  Y`              GDSC   )      2        ������ڶ   �����Ķ�   ��Ŷ   ��������   �ض�   �����϶�   ߶��   񶶶   ������Ŷ   �ƶ�   ����������¶   ����   ������Ӷ   ����鄶�   ��������Ҷ��   �����¶�   ����¶��   �������Ӷ���   �����Ҷ�   ��������������������޶��   ���������Ҷ�   �������ض���   �������Ӷ���   ���¶���   ���������Ҷ�   ��ض   ض��   ����Ķ��   ����¶��   ����������������¶��   ��ض   ��������Ҷ��   ����������������   ����Ķ��   ���������Ӷ�   �����������������Ҷ�   ����Ӷ��   ������Ӷ   ���������������Ҷ���   �����㶶   �������������������Ҷ���      res://images/head.png                                         
                                 	      
   (      1      :      B      C      D      K      T      Z      b      h      k            �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /   
  0     1     2   3YY8P�  Q;�  YY;�  �  T�  YY;�  YY0�  PQV�  )�  �K  P�  T�  QV�  ;�	  �
  T�  PQ�  �	  T�  �L  PQ�  W�  T�  P�	  QYYY0�  P�  QV�  &�  PQT�  V�  &�  4�  V�  &�  T�  PQV�  �  �  T�  �  (V�  �  P�  QT�  PP�  �  T�  QT�  PQQYY0�  P�  QV�  �  �  �  �  PQT�  �  �  W�  T�  P�  QYY0�  PQV�  ;�  �  T�  P�  T�   Q�  �  T�!  P�  Q�  �  PQT�  �  �  �"  PQYY0�#  PQV�  �  PQT�  �  �  W�$  T�%  �  YYY0�&  PQV�  �  PQT�  �  �  �  T�  P�  T�'  Q�  �"  PQYY0�(  PQV�  �  PQT�  �  �  W�$  T�%  �  YYY`      GDSC            �      ���Ӷ���   �����㶶   ��������嶶�   ������   ������������   ����������������   ������鄶���   ��������   ����ⶶ�   ��������   ������������   ���Ŷ���   ��������   ������Ŷ   ��������Ҷ��   Ŷ��   ����Ӷ��   �������Ӷ���   �������Ӷ���   ���¶���   ��������Ҷ��      res://scen/Menu.tscn      res://scen/Seting.tscn        res://scen/Game.tscn      res://scen/Info_game.tscn         res://scen/Winer_mission.tscn         res://scen/Game_2.tscn        res://scen/Winer.tscn         res://effects/Hit.tscn        res://effects/Bul.tscn        res://effects/Bul_rain.tscn                                             #      +      3   	   ;   
   <      D      L      T      U      \      ]      b      c      j      s      ~      �      3YY:�  ?PQY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QYY:�  ?P�  QY:�	  ?P�  QY:�
  ?P�	  QYY;�  �  T�  YY;�  �
  YY0�  P�  QV�  ;�  �  T�  PQ�  �  PQT�  T�  P�  Q�  .�  Y`              GDSC   .      E   �     ����������¶   �����Ą�   ���������޶�   �������޶���   ��Ķ   ���϶���   ����϶��   �����޶�   ����¶��   �����϶�   �������Ӷ���   ���¶���   ����   ��������̶��   �������������������ض���   ����������������¶��   �����Ŷ�   ���¶���   �������������¶�   ������������ض��   ����Ӷ��   ��¶   ����ݶ��   ���Ҷ���   ������Ӷ   ����Ķ��   ����¶��   Զ��   񶶶   ��������Ҷ��   ��������   ������������ض��   ����������ٶ   ������Ҷ   ޶��   �ն�   ����ⶶ�   ���¶���   ���۶���   ���϶���   �����������ض���   ���������Ӷ�   ��ض   ��������   ����Ķ��   ����������������¶��                d      Z         ?             -         new       ../..      �     ffffff@  �������?   2                      	                               #   	   (   
   )      /      5      <      C      J      K      R      Z      e      l      y      z      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *   
  +     ,     -     .   +  /   .  0   :  1   A  2   H  3   I  4   R  5   ^  6   l  7   z  8   }  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   3YY8;�  Y8P�  Q;�  Y8P�  Q;�  Y;�  Y8;�  �  Y;�  Y;�  �  YY;�  �  Y0�	  PQV�  &�  V�  �  �  �  �
  P�  Q�  �  �
  P�  QYY0�  P�  QV�  &�  �  T�  V�  ;�  �  T�  �  T�  �  ;�  �  �  �  ;�  �,  P�  T�  P�  QQ�  �  �  �,  P�  T�  PQQ�  �  �  �  T�  P�  P�  R�,  P�  T�  PQQQQ�  �  W�  T�  �  �  W�  T�  P�  Q�  �  ;�  �  T�  P�  T�  Q�  �  T�  �  �  P�  T�   P�  QR�  QT�!  P�  T�  PQQ�  �  YYY0�  P�"  QV�  &�"  V�  �  �"  �  ;�#  �  T�  P�  T�$  Q�  �#  T�  �  �  �#  T�%  �>  P�  R�"  Q�  &�  
�  V�  �  �  �  W�&  T�'  P�  Q�  &�  T�(  PQV�  �  T�(  PQL�  MT�)  PQ�  (V�  ;�*  �  T�  P�  T�+  Q�  �*  T�,  P�  Q�  W�  T�)  PQYY0�  P�  R�  QV�  �?  P�  P�  �  Q�	  Q�  &�  
�  �
  �  �  �
  V�  &�  
�  �  �  �  �  V�  .�  �  (V�  .�  �  (V�  .�  �  YY0�-  PQV�  W�  T�  YYYYY`       GDSC   2      K   �     ����������¶   ���������޶�   �������޶���   ��Ķ   ���϶���   ����϶��   �����޶�   �����϶�   �������Ӷ���   ���¶���   ����   ��ض   ߶��   񶶶   ������Ŷ   ��Ŷ   ��������Ҷ��   ������������   ���������¶�   ��������Ҷ��   ��¶   ������Ӷ   ��������̶��   �������������������ض���   ����������������¶��   �����Ŷ�   ���¶���   �������������¶�   ������������ض��   ����Ӷ��   ����ݶ��   ���Ҷ���   ����Ķ��   ����¶��   Զ��   ��������   ������������ض��   ����������ٶ   ������Ҷ   ޶��   �ն�   ����ⶶ�   ���¶���   ���۶���   ���϶���   �����������ض���   ���������Ӷ�   ��ض   ��Ҷ   ����������������¶��         d                     ../Label   Z         ?             -         new       ../..                dead   �     ffffff@  �������?   2         win                    
                              "   	   #   
   )      0      7      8      ?      G      N      [      g      p      u      |      }      ~      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )   	  *     +     ,   &  -   ,  .   0  /   8  0   @  1   M  2   P  3   X  4   `  5   f  6   g  7   p  8   |  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   3YY8P�  Q;�  Y8P�  Q;�  Y;�  Y8;�  Y;�  Y;�  �  YY0�  PQV�  �  �  P�  Q�  �  �  P�  QYY0�	  P�
  QV�  &�  �  T�  V�  &�  T�  V�  )�  �K  P�  T�  �  QV�  ;�  �  T�  P�  T�  Q�  �  PQT�  P�  Q�  �  P�  Q�  W�  T�  �  �  �  ;�  �  T�  �  T�  �  ;�  �  �  �  ;�  �,  P�  T�  P�  QQ�  �  �  �,  P�
  T�  PQQ�  �  �  �  T�  P�  P�  R�,  P�
  T�  PQQQQ�  �  W�  T�  �  W�   T�!  P�  Q�  �  ;�"  �  T�  P�  T�#  Q�  �"  T�$  �  �  P�  T�%  P�  QR�  QT�&  P�
  T�  PQQYYY0�  P�'  QV�  &�'  V�  �  �'  �  ;�(  �  T�  P�  T�)  Q�  �(  T�  �  �  �(  T�*  �>  P�  R�'  Q�  &�  
�  V�  �  �  �  W�+  T�,  P�	  Q�  &�  T�-  PQV�  �  T�-  PQL�  MT�.  PQ�  (V�  W�
  T�/  P�  Q�  W�+  T�,  P�  Q�  �  T�0  PQYY0�  P�  R�
  QV�  �?  P�  P�  �
  Q�  Q�  &�
  
�  �  �
  �  �  V�  &�
  
�  �  �
  �  �  V�  .�  �  (V�  .�  �  (V�  .�  YY0�0  PQV�  W�+  T�,  P�  QYY0�1  PQV�  W�  T�  �  �  W�  T�  �  YYYYY`           GDSC            �      ������������τ�   ��ն   ��������   ��������   ��������Ӷ��   ��϶   ������ٶ   ������Ҷ   �������ض���   ���¶���   ����   ���϶���   ���Ҷ���   ������Ӷ   ����Ķ��   ����¶��   ����Ӷ��   �����Ӷ�   ����������������¶��                      Z                                                     1      2   	   9   
   B      J      Z      j      n      o      p      v            3YYY;�  �  T�  YY0�  PQV�  �  P�  T�  RW�  T�  T�  PW�  T�  QR�  PR�  R�  RQQYY0�	  P�
  QV�  W�  �  T�  �  �  W�  T�  PQ�  W�  T�  �
  T�  PQ�+  P�  Q�  W�  T�  �
  T�  PQ�+  P�  Q�  �  PQYYY0�  PQV�  W�  �  T�  �  Y`   RSCC          (�/�` �,)`mH ����P����B�F�;�ɟ]�e��q�!)������ʿD�#R ��K7qhv'�cX�<��x�(���Q.�d$���.Z�m��gd��a��ji��EM%tB��/�r�j~2G1��q�4AP6���?��P�8�l��E�.��=�����6�H�a�P~�?� OS䬅�k�'�ԍ�]p��7��M�����W�p(.��\Հi�̤1��(K�y�ќ3�q?��cҼ���C]Yq��7�6RSCC            RSCC      !    (�/�`! 2�,(pkH ����*�K���)(���M��fJ1C)�/�P�;=�z�
��C��82�t
f�م,d�a���&�!����r�`��"�d-tp�������V�Lwu��,�J�<�n1�_��.��d�b(�����@��Z��	g�z?�ɰe���.Z�t�L΢/���oS���K�G�> OS��Eث��:�|�d0.��p�F)�z��~�W�bZ+3i��C*
��9C�s4��g܏=���4/���PWV�+��RSCC            RSCC      !    (�/�`!E b�-)pkH ���ꐢ��ҧ�}
J�\��W�L)�BCJ��E N�� �
ɿ��l �Le`�K�P����c!{�}��8��}�KC8	'ka)h�V~��a��a��:q��E��>�ۋ�v�KU~�G1���tij�lj�E��C���dزezH-L�P&wї�w����DR&�#� OS�,Kv��	�	�N�)5�Ki=�Q
������U����L����B�tΐ��9��cO(0&͋?k=ԕ'�J~hRSCC           �  `FFTMbE�  ML   GDEF � $  M$   (OS/2���L  h   Vcmap�c�`  |  �cvt  "�  x   gasp��   M   glyf6��  �  >thead��   �   6hhea0  $   $hmtx)�(�  �  �loca"q2�  |  `maxp � �  H    nameM�8�  FP  postA�N�  Hl  �      ��_<�      ��@k    ��@k������             ��� \ ��  �                �    � P 	            @ .     j�   ��   ���  � 3	         � G           2ttf @  0  �  \� �         v "    U  @   � @� @  @� @� @  @  @@ @@ @� @� @  @� @  @� @� @@ @� @� @� @� @� @� @� @� @@ �  @� @  @� @� @@ @� @� @� @� @� @� @� @� @@ @� @  @� @@ @  @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @  �� �� @ � @� @� @� @� @� @� @� @� @� @� @� @� @� @� @@  � @� @� @@ @� @� @ @�� ��� ���� @@ @� @� @� @� @@ @� @� @� @  @  @  @� @@ @� @� @� @� @� @� @� @@ @� @� @� @@ @� @  @@ @� @� @@ @� @� @� @� @� @@ @� @@ @� @� @� @� @� @@ @� @� @� @� @� @� @� @@ @� @� @� @@ @� @  @  @� @� @  @� @� @  @@ @� @@ @� @� @� @� @                     �       �   2     Z z �BD[OQcrt���� 0 ��     a �BD[Qbrt���� 0 ���������T�S�B����^�]�a�]�T�S�C�5�4����������Ю                                                                                  	
 !"#$%&'()*+,-./0123456789:;<=      >?@ABCDEFGHIJKLMNOPQRSTUVW                                                                               X      �                                                 "�   * * * * B Z � �2p����*<Lt���>j��D����.^��Jx���$Bh���.`���	:	V	�	�	�
*
Z
�
�
�Bt���6l���0Z|���*\����(`���0L\���Lf��&b��Dx��� Vr��(Rx��Nz��,^���B���*^��� "Nz��Pv���"Tz��P���(j��$::  "  2�   .� /<� �2��<� �2 � /<� �2��<� �23!'3#"�����V"f   @   �@    353'=3@@@@@@�@@@@@@@@@@@@@@   @�@@    =3!=3 @� @�@@@@@@@@@@@@  @���  ) 3  =+#=#53=#53=3;=33#3#'3=+@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@   @  �@ ) - 3  35#53=#5#=3535333#5#33#=#3#'#537=#�@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@�@@@@  @  @@ + / 5 ; A G K  3=3=;=;=353#+3;+5#=+#53=3'+5;%#=3#=37#53@@@@@@@@@@@@@@@@@@@@@@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@� @@@@�@�@@@@@@@@@   @  �      # ) /  %3+5;=3!#=373+5!53!#=373+5 @@@@@�@� @@@@@@ @��@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@�@@   @� �@    53=#5;@@@@@�@@@@@@@    @�� @       53'#53+=353=3�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @�� @       53=3=3#53+53@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@  @@�@     53#537#5+5;53;+ @�@@@@@@@@@@@@@@@@@@@@@@@    @ ���   7=+5;=3;+�@@@@@@@@@�@@@@@@@@@@   @�� � �    53=#5;@@@@@@@@@@@@@     @ �@  	  3+5; @@@@@@@ @@   @   � �   3#=;�@@@@@@@    @���@       =3=3=3=3=3@@@@@@@@@@@�@@@@�@@@@�@@@@�@@@@   @  �@   ' /  %3+5;=3!#=3+5; @@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@   @   @   3+53=#53533�@@@@@@@@@@@@@@@@@@@@@@@@@  @  �@      ' /  =33+=3;'53=3=3=3'+5;@@�@@@@@@@@@�@@@@@@@@@@@�@@@@��@@@@@@@@@@@@@@@@@@@@�@  @  �@     ! ) 1  =33+5;=3!#=37+5;1=3'+5;@@�@@@@@�@� @@�@@@@@@@@@@@@�@@@@��@@@@@@@@@@@�@@@@@@@�@     @  �@  '  !=+=353535;3=###3@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@    -  %3+5;=3!#537+=;+; @@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@     @  �@    ) 1  533+5;=3!#=3;++5;@@�@@@@@�@� @@@@@@@@�@@@@@@�@@��@@@@@@@@@@@@@@@@@@@@@�@     @  �@    !  3=3=3=3=+5;�@@@@@@@@@@@@@@@@@@�@@@@�@@@@�@@@@   @  �@     ' / 7  %3+5;=3!#=37+5;1=3!#=37+5; @@@@@�@� @@�@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@�@  @  �@   # + 3  %3+5;=+5;=3!#=35#=37+5; @@@@@�@@@@@@@� @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@�@     � @ �    7#=;#=;�@@@@@@@@@@@@ @@@@   @�� ��     53=#5;#=;@@@@@@@@@@@@@@@@@ @@@@     @  @�         !53'#53+53+53153=3=3 @@@@@@@@@@@@@@@@@@@@@@@@@@@   @ ��@    %3+5;73+5;�@@@@@@@@@@@@@@@@@@@@@@@�@@�@@   @  @�         353=3=3=3'#53+53+53@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@      #  353'=3=353=3'+5;�@@@�@�@@@@@@@@@@@�@@@@@@ @@@@@@@@@@@@�@  @       3 9 E  %3+5;+=3!+5#=35;3=3'=#+5;�@@@@@@@@@�@@@@@@@@@@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @  @  �@  % + /  !=+#=3;=3#=3=37#53@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@�@     @  �@  5  %3=+3+=;3#=+;3# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  �@    # +  =33+5;=3!#=3+5;@@�@@@@@�@� @@�@@@@@@�@@@@��@@@@@@@@@@@@@@@@@@@�@    @  �@  /  %3=+3+=;3# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@ )  %3+=;+;+;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@ !  3=;+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@    ' /  533+5;=#5;!#=3+5;@@�@@@@@�@@@� @@�@@@@@@�@@��@@@@@@@@@@@@@@@@@@@@@@@�@   @  �@ +  !=+#=3;=3@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @   @   3+53=#5;#3�@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  @@   !  73+53=+5;+=3�@@@�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@   @  �@  % ) - 1 5  !53!=33333#5#5#5#53=3=3=3�@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@   %3+=3;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @   @ 5  !=###5#5##=3333535353�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  7  !5#53=3!=3333#=#=#�@@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@   ' /  %3+5;=3!#=3+5; @@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@   @  �@ '  3=;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @���@    - 5  53'+535331=3!#=3+5;@@@@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@     @  �@  3  !=3!=;3#=+;#3#5#5#@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  �@     # + 3  =33+5;=3!#=37+5;+=37+5;@@�@@@@@�@� @@�@@@@@@�@@�@@@@@@�@@@@��@@@@@@@@@@@�@@@@@@�@    @  �@   3=+5;+�@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@   +  %3+5;=3!#=3 @@@@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  	   +  353=3+=37=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  �@    # 5  !53#537=3+=3#=3 @�@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  	 @  �@       # ) /  !=3!=37#53537#=3=3+5;=3!#=3@@��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@   @  �@ 	    %  3=3=3+=37=3!#=3�@@�@@�@� @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@    @  �@     +  %3+=3;'53=3=3=+5;@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@    @  @�  	  %  533+53=+#=35;=3+5;@@@@@@�@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@@@@@   @  @@   '  73+53=3+=3;+�@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  @�  	     533+5353+=3+5; @�@@@�@�@@�@@@@@@@� @@@@@@@@@@@@@ @  @  @@  '  73+53=+#=35;=3�@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  @�  	   %  73+5353+=3;+7=3'+5;�@@@�@�@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@�@    @  @@     3=3;+53'+5;@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@@@@  @��@�    ' -  3+53=+5;=3+535#=37+5;�@@@�@@@@@�@@@@�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@�@    @  @@  %  !=3!=3;+ @� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   �   �@    3=353�@@@@@@@@@@@@@@@@@ @@  ���@@      5353=#5;+53�@@@@@@�@@�@@�@@��@@@@@@@@@@@@@@@@@     @  �@  ! % ) -  !53!=3333#5#5#53=3=3@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@   @   �@   3=3@@@@@@@@@@@@@@@@@@@@  @  ��   ' + /  !=3!=37=3#53#53@@��@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  @�   !  !=3!=3+5; @� @�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@    @  @�    #  73+53=3+=3+5;�@@@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@ @  @��@�   %  =3;+=3+5;@@@@@@�@@@@@@�@@@@@@@@@@@@@@@@ @@@@@@@@ @    @��@�   #  =+5;=3'#=37+5; @@@@@�@@�@@@@@@@@@@@@@@@@@@@�@@@@@@@�@  @  @�     3=33#53'#53@@@@�@@@@@@@@@@@@@@@@@@@@@@@     @  @�  	     %  533+53=3+537+5;+=37+5; @�@@@�@�@@�@@@@�@@�@@@@@@@� @@@@@@@@@@@@@@     @  @@     353=3+=#53=33#�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@     @  @�   !  73+53=3+=3�@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  ��  	   #  353=3+=37=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  ��     +  !53#537=3+=3#=3 @�@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    	 @  ��        % +  !=3!=37#53537#53153+5;=3!#=3@@��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@@@@@@@   @��@�    +  3+53=+5;=3+535#=3�@@@�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@   @  ��     '  %3+=3;'53=3=3=+5;@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  @�   !  !#=#5;3'5+#535;53'+5; @@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@�@  @  �@      % )  53'533+5;53!#=37+5;'53@@�@@@@@@�@� @@�@@@@@@@@ @@�@@��@@@@@@@@@@@�@�@@  @  �@   ) 1  !#=+5;3'53!#=3;=3++5;@@@@@@@@@@� @@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@ @   @   @   3=#53=33#�@@@@@@@@@@@@@@@@@@@@@@@    @  �@    % )  !=3!=33#53+5;'53@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@�@�@@  @  �       # '  533+5;53'+5;+5373+53753�@@@@@@�@@@@@@@@�@@�@@@@@@@�@@��@@@@@@@@@@�@@ ��@  �    53=3�@@@@@@@@   ��@ ��      53#53753+53@�@�@�@@@@@@@@@@@   ��@ @�   3+53@@@@@�@@    @  ��   1  53#533+=;+;+; @�@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@��@@@@@@@@@@@@@@@@@@  @   @   3+53=#5;#3�@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@  % + /  !=+#=3;=3#=3=37#53@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@�@     @  �@  /  %3=+3+=;+;3# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  �@  5  %3=+3+=;3#=+;3# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  �@   3=;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @�� @ # 7  5+#=3=3=;3'3=+#3�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@  @  �@ )  %3+=;+;+;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  3 9 ? C G K O  !53!=####5353=353=3333#5#=#=3!#=3%53!#53!53!#53@@��@@@@@@@@@@@@@@@@@� @@ @��@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  �@      % -  533+5;=3!#537+5;1=3'+5;@@�@@@@@�@� @@�@@@@@@@@@@@@�@@��@@@@@@@@@�@@@@@@@�@     @  �@ 7  !=#####=33=3=35353�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  �� 7 = A E  !=#####=33=3=353533+5353+53�@@@@@@@@@@@�@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@  @  �@  % ) - 1 5  !53!=33333#5#5#5#53=3=3=3�@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@ +  !=+##53=35;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @   @ 5  !=###5#5##=3333535353�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@ +  !=+#=3;=3@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@   ' /  %3+5;=3!#=3+5; @@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@   @  �@ +  !=+#=;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@ '  3=;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@    # +  =33+5;=3!#=3+5;@@�@@@@@�@� @@�@@@@@@�@@@@��@@@@@@@@@@@@@@@@@@@�@    @  �@   3=+5;+�@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  �@   # -  %3+5;=+5;=3!#535#=3 @@@@@�@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@  @   @ 1 ;  !+535+5#=35;5#5;#;3#=+;+3'3=+@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@  	 @  �@       # ) /  !=3!=37#53537#=3=3+5;=3!#=3@@��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@   @���@ -  5+=3;=33@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  #  !=+5;=3#=3@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@  @   @ ?  !+=3;=3;=3�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @��@@ E  =+=3;=3;=33 @@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  )  %3=++=+5;;3#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @   @   ;  !=3%3=+3+=3;3#�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  )  %3=+3+=3;3# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  �@  % + 3  7=33=3#+5;=#'=3#=3+5;�@@@@@@@@@@@�@@@�@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@��@@@�@     @   @ + ; C  3=33=3;+5#=#%=3+5;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@    @  �@ ' 3  !=####=3535#5#=35;3=+3@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  @�  	  %  533+53=+#=35;=3+5;@@@@@@�@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@@@@@   @  �@   % - 1  %3+5;=3!#=3;+3+5;53 @@@@@�@� @@@@@@@@�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@    @  @�  '  73=++=;3#=+;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  @�   3=;+@@@@@@@@@@@@@@@@@@@@@@    @�� �  /  5+#=353=;3'3=+#3�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@    @  @�  	   %  73+5353+=3;+7=3'+5;�@@@�@�@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@�@    @   �  ' + / 5 ;  !=3!=###=35353=333#5#53!#53!=3!#=3�@� @@@@@@@@@@@@@� @@ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@   @  @�  	     %  533+53=3+537+5;1=3'+5;@@@@@@�@�@@�@@@@@@@@@@@@@� @@@@@@@@@@@@@�@   @  �� '  !=####=335353=3@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �� ' / 3 7  !=####=335353=33+5;53!#53@@@@@@@@@@�@@@@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  ��   ! % )  !53!=3333#5#5#53=3=3@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@   @  �� #  !=+##53=;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @   � -  !=###5#5##=3333535353�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �� #  !=+#=3;=3@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @  @�    #  73+53=3+=3+5;�@@@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@ @  @  �� #  !=+#=;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @��@�   %  =3;+=3+5;@@@@@@�@@@@@@�@@@@@@@@@@@@@@@@ @@@@@@@@ @    @  @�  	     533+5353+=3+5; @�@@@�@�@@�@@@@@@@� @@@@@@@@@@@@@ @  @  ��   5#3+53=##=;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @����    %  ;+53=#5;#7=3!#=3�@@@�@@@@@@@� @@@@@@@@@@�@@@@@@@@@@@@@@@    @�� @ 3 =  +53=+5#=35;=#5;;3#=+;+33=+@@@@@@@@@@@@@@@@@@@@@@@@�@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@    	 @  ��        % +  !=3!=37#53537#53153+5;=3!#=3@@��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@@@@@@@   @���� %  5+=3;=33@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  @�    !=+5;=3#=3 @@@@@�@@@@@@@@@@@@@@@@ @@@@@   @   � 3  !+=3;=3;=3�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @��@� 7  5+=3;=3;=33 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  �� #  =;;3#=+;+=#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  ��   /  !=3%3=++=3;3#�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @  @� 	   73=++=3;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  @�  	   #  533+53=+5;=3+53+5;@@@@@@�@@@@@�@@�@@@@@@@� @@@@@@@@@@@@@ @     @  �� ! - 3  3=33=3;+5#=#%=3+5;@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @  @�  %  !=###53535#5#=35;3=+ @@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@ @@@@     @  @@     ! ' -  53!533+5353+=3;+7=3'+5; @� @@@@@�@�@@@@@@�@@@@@@ @@@@�@@@@@@@@@@@@@@�@@@@�@   @  �@ /  5#;3#=+;+=##=;53;@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @      -  %3=+3+=+5;53;+;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @  �@  + 3  %3+5;=+#=3;=3+5; @@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@   @   @  	   ' + /  353=3+=37=3!#=3%53=3�@@�@@�@� @@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@    @  ��  # ' - 3 7  !=+#=3;=353#53#=3=37#53@@@@@@@@@@�@�@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@� @@@@@@@@�@   @  @@ 1 ?  3=3=35;+;+;+=+3=+#3@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@   @  �@   ) 1  533+5;=+#=;=3+5;@@�@@@@@�@@@@@@@@@@@@@@@@�@@��@@@@@@@@@@@@@@@@@@@@@@�@    @  ��     1 9  53753#533+5;=+#=;=3+5;@@�@�@@@@@@@�@@@@@@@@@@@@@@@@�@@�@@@@��@@@@@@@@@@@@@@@@@@@@@@�@     �@   3+5;�@@@@@@@@@@@@@@@@       �         "        S        q         �        �       -       ^  	        	   3  	   c  	  @ x  	   �  	     	  > O r i g i n a l b y A n o n y m  OriginalbyAnonym  M o t o r o l a V 5 0 c o p y  MotorolaV50copy  M e d i u m  Medium  O r i g i n a l b y A n o n y m : M o t o r o l a V 5 0 c o p y  OriginalbyAnonym:MotorolaV50copy  M o t o r o l a V 5 0 c o p y  MotorolaV50copy  V e r s i o n   0 0 1 . 0 0 0    Version 001.000   M o t o r o l a V 5 0 c o p y  MotorolaV50copy        �� 3                     �           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] � �	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRST �Uuni00A0aogonekeogoneknacutesacute	acutecomb	tildecombuni0304	afii10023	afii10055	afii10017	afii10018	afii10019	afii10020	afii10021	afii10022	afii10024	afii10025	afii10026	afii10027	afii10028	afii10029	afii10030	afii10031	afii10032	afii10033	afii10034	afii10035	afii10036	afii10037	afii10038	afii10039	afii10040	afii10041	afii10042	afii10043	afii10044	afii10045	afii10046	afii10047	afii10048	afii10049	afii10065	afii10066	afii10067	afii10068	afii10069	afii10070	afii10072	afii10073	afii10074	afii10075	afii10076	afii10077	afii10078	afii10079	afii10080	afii10081	afii10082	afii10083	afii10084	afii10085	afii10086	afii10087	afii10088	afii10089	afii10090	afii10091	afii10092	afii10093	afii10094	afii10095	afii10096	afii10097	afii10071	afii10146	afii10194	afii10147	afii10148uni04D2uni04D4uni04D8uni04DAuni3000   ��                 �                    ����    �x+A    ��@k        RSCC          (�/�`= R-)`mH ���O`2�J���)���}'>�S���`޸Ps4�F��
ʿ��Gd2���_:�C�ٕ,d�a���a����r���#ae-tp�mS�78vhI3��
�G]4��y�f俰�]�9�=��P��ӥ遲���N�~��a˖�!]�0�B��E_�?�?ަI1l�ɏ�|  0C�*;O8�=�� N k�s�`Y���^��P��W���e&�h�R��g���|�s�c#cR?�re�H0�o�mRSCC       RSCC      �
  �  (�/�`�	5 #v>��� :��GFx#8��fxȽ����RNx��]�=���O�np���Z"GF`N�L�.�	tȝ�zW _ ` օ�Ն�r����W��+������_�^Jbp�ގ_�k�j�f,U�ܝ}'}�=�O���g�N�����]���x_m��O �� ���({'_;��]��׾�փÖ$�:�R�ޛ�����rWf\5�X��@iF�Q��wr۪�(�š�-–����oC�!"�E��՞��p�$%�����v]�ܖ��Z��(�U�ŋ�)ğ��Jl�$�)�싔Y��H9���G�I_�nHLP.�=v�lX�Q��"�dO��|U:C6{��lKӵ���51565\:pؠ��e��j�B�y9Uh�ш��	�D@�pRҰ���SO����??0���fF���t�i *V��S��M�q1��:|@M��/K�
c��+י.}�ż��\���ШaM33 @��*"r  �42�Fdf$�� :
��c����χ��4L����?ӵ[*�iBu`���)�jrhƱ`dЋ �$� �`x�C<f�����OA��:B�!<X�S�'1cɒ��)[WB�����h��.G�vg����չ�����i���~2��ڢ)��X:�-�Bޝ!%�3y�Z,�I��"�(�Pe9�s�r����G:6��(��WNړ�\E-�i�9�=*k�}���<s,o8w���ҶXUYr���I�Ҁ.$������ې@���d��zx~��W!Vt-(֗.h��F�y�VJk	��P����_��g^8�&�9���K���9��0�`Hjn��Z���Q]�G���m	T���6''�ni�e*&�	�Y�1�`TJ��:�*u]�y��KȾ��@RSCC        [remap]

path="res://scripts/COMP.gdc"
         [remap]

path="res://scripts/Control.gdc"
      [remap]

path="res://scripts/Control_shot.gdc"
 [remap]

path="res://scripts/Controller_one.gdc"
               [remap]

path="res://scripts/Global.gdc"
       [remap]

path="res://scripts/Player.gdc"
       [remap]

path="res://scripts/Player_mission.gdc"
               [remap]

path="res://scripts/Puppet.gdc"
       �PNG

   IHDR         \r�f   	pHYs  �  ��+  �IDATx��ۏUW��w�0@�$�,�B�Li�:��\f��w���T�M5[M�񡩗�h�h4>��'}01��xy�c�|;��:�Y����=|�^k���Y�޿ߺ�G��o�M�"�( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�( /�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D�t������������\�~#�e(�5S �Eб�|�j��;������^h�c��e�f
@���t�_~�B����֧���(CY���.�G|��t��\9.�L4�1�Q��^3 ]q>������'N�h�c��e�f
@�( Q � D� 
@�( Q � D� 
@�( Q � D� 
@�Q 
@D( ����O����J���K�o����l���Wn�
Ό7	�c��e�C]ڠ-��������gï��>޺~(|�ґpcz,�2q�I �e(K��myM�tܽ��߸q0�:�+��D8=�l�;N�I �e(K��myM�t<�s�#?��u�cׄ�;�Á�g���#M��(CY�P�6h�k� �@���w��ꘛ6߾5�nY�2,_�<lܸ1�ٳ'���M��(C�����񁏆���� s
@
��t�"Ts���K���s��e0'� �@�M�+B�1wY�-]6�]�I�'s
@
��t�"Ts���-�$�� �9`��@�������CajxG�ߴ6�X�"���e�iٲea�ҥp,��>(CY�P�6h�l��h0���>� A&H���oB���ޚ��{¾]�CزeKشiSذaCX�~}�e(K��m��T 
@J��ܽ��/?FG����P{��O?�tؾ}{�e(K��m���� ����y��.NG>59Μ9N�<�=<8� �8G�R����Ã����NV 
��@��r��֮]v�ܙu����p�ҥ0==��ǳ���<�e(K��m���������/φ{�&���X��AJ;v���r
@�/�oݺ�:���?�u�ӧOg{rr2;v,9r���q�s��,u�K��_6G��^?��������@v��C�''�z�����+ `��P�?22���]�N͝����X8|�p� 8ƹ����B�~��{߹������;��G�<�����J,^�X( c��b��g�6�#<wq:��/��ud��t����&p�s��,u�K��_6G��o����h�pd�����<<�s��?��c
@�V̟��׭[v�ڕu���χ�7o6p���p�ܹ���ɋ�:ԥڊ��3)�w໤rqN �w�
@tu̟���xd�K���;�kײ㳳��{(P���A[q��߁���9� d��?�s���I�\���A�_����r/��ui����9�g�����9� d��?���P�q�Fv��7��E��C]ڠ���wI�✀P �����?E�H�� O,�ee�{�0�����?E�!@�8G������ɀ~
@��b�T����$`�8G�����Y��2_� ��s1*�OQ�0`�'�/qN��~��t~��+ �S�I0��>#�N�h�k7��������k���
@�qP� �#P(�6N�- �T 
�����{* ��;H � V���gɒ%aѢE��`RP����� � �D�V��$� ���%���=	�۶m�$0ߎ?
@8��EÀ� D�x P 
����:�O �qy��C:t(g;����M��r�s��,u�KU�P ��_�1J tl��۷o��n�9�P�nT�P 
����:�O	��;����6��p�s��l��:'� @G��Wu̟ ������O<�Dӫ�8�9�P�nT�P 
������UO�I��_�x1LMMe�{�H���l��͛7�5kք'�|��q�2��ui����P�D!� j̟Z�^� �q:.�z��w�ޝul����Ͽ�}�9�9�P�S�6h��y
@tU̟Z�^� �q��t`:5wv������D��U�P 
��b���������]��<��Ͽ�̔�}�v�e�B��oڪz^�P ]��-��1?	>��y��k���ݻ� �8Gʶ:'PV �� �*�[ Ec~:6o��Ν;w��1�Q����	���(�����@ј��;���W_���z� 8�9�P��9��p �V1�(���]��~���&p�s��l�se�� 
��b~�3��I6Ll�{�ۙ�ˬ>>���~�|q�OA��m�&m�|V��pm��蘟.���13���}�[-���#�� ��1?�0�ۙ�Z�>��@��pm��蘟GX�b���Q׽��P�{\� �j�΢?��I�T���/:�"5/`����	81H�� R1�����Լ�x���s
@�� R1�����Լ�x���s
@�� R1�����Լ�x���s
@�� �zěxV��+���=e6Q 
@( � �P 
@( � L�T 
�a@��p"���p*�S��p1P�.rC�r�^�`
�AzxC7U n	��[��-��MAz�g՛����ТI?c~��ۂ�^�]���u�>�� ��@O�$@�yE��� ��@O�,@�yd��a
��_���AˮH����E`̯ ::'P�����H����E`̯ ::'P��A��`x/O����1���@ݯ/�V���<���_T ��
��r,F�ӿimطk{
�&'J�(�`�M�V�����	׆kĵ���1�訜 +��L���{�K��e?��k���՗��1<��kµ�q���g̯ :*'�2�<o^
�&�8w��k���қ��1<��kµ�q���g̯ :*'��<�1������[vm@ٜ ��yZ��s��&\��*�~��
��rU�����L8u�Լ9�x��b~��FH����
��rU�����̾����#�9�X q�O��m�R1�1��A�9�8	w�8' ��c��M�b~c|�S9��s�0`�����?��!D�a�T�o�� zz�Ѫ�#�n�'��i�P 
��C � �F�{P( �Q �>� ��p^@jm��#�*��w�_H����B����w�_H������U��︿��H�HV�Ͽ��
@J�H��sq��� ��!����g̯ � �<q� ~��x��!@\?	�?�~��
@*�	0|�'��I?:r��I��~��c����+ �0'��y�8G0߰_L�a��xX0����g̯ �@j�Af��V:+we6�`s������h��h��|��~
@Z�H�1�n>a�޽��^ܙ��}�?^8�ui��h���>�=���0'��c���?lٲ%��sÆ�ߟy晬3��h�:ԥڢM���|�{�) iaN ����+B___X�|yX�lYxꩧ�=������O��m�&m�|�{�) ��A�)�1���̷-�1����/1�W �C9���`��
@z(G��_H�R�+ ��A
c| ]�#Ha�� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� D�AD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� DD�� "
@D��( Q "� D���/�;��S�X    IEND�B`�             ECFG      _global_script_classes             _global_script_class_icons             application/config/name         DuelWest   application/run/main_scene         res://scen/Menu.tscn   application/config/icon         res://icon.png  
   autoload/G          *res://scripts/Global.gd   display/window/size/width      h     display/window/size/height      �  #   display/window/handheld/orientation         portrait   display/window/stretch/mode         viewport   display/window/stretch/aspect         expand  /   input_devices/pointing/emulate_touch_from_mouse         $   rendering/quality/driver/driver_name         GLES2   7   rendering/quality/intended_usage/framebuffer_allocation          >   rendering/quality/intended_usage/framebuffer_allocation.mobile         %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/quality/directional_shadow/size         0   rendering/quality/directional_shadow/size.mobile         #   rendering/quality/shadow_atlas/size         *   rendering/quality/shadow_atlas/size.mobile         )   rendering/environment/default_clear_color        �?��@?�� ?  �?      