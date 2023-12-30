.class public Lcom/libs/qrcodecamera/tool/RxDataTool;
.super Ljava/lang/Object;
.source "RxDataTool.java"


# static fields
.field private static final AMOUNT_FORMAT:Ljava/text/DecimalFormat;

.field private static final HEX_DIGITS:[C

.field private static pyStr:[Ljava/lang/String;

.field private static pyValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 52
    fill-array-data v1, :array_0

    sput-object v1, Lcom/libs/qrcodecamera/tool/RxDataTool;->HEX_DIGITS:[C

    .line 58
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###,###,###,##0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/libs/qrcodecamera/tool/RxDataTool;->AMOUNT_FORMAT:Ljava/text/DecimalFormat;

    const/16 v1, 0x18c

    new-array v2, v1, [I

    .line 993
    fill-array-data v2, :array_1

    sput-object v2, Lcom/libs/qrcodecamera/tool/RxDataTool;->pyValue:[I

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ai"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "an"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ang"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ao"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ba"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "bai"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ban"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "bang"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "bao"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "bei"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ben"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "beng"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "bi"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "bian"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "biao"

    aput-object v3, v1, v2

    const-string v2, "bie"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "bin"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "bing"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "bo"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "bu"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "ca"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "cai"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "can"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "cang"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "cao"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "ce"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "ceng"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "cha"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "chai"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "chan"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "chang"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "chao"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "che"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "chen"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "cheng"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "chi"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "chong"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "chou"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "chu"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "chuai"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string v2, "chuan"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string v2, "chuang"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "chui"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "chun"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "chuo"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "ci"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "cong"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "cou"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string v2, "cu"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string v2, "cuan"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "cui"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "cun"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "cuo"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "da"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "dai"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    const-string v2, "dan"

    aput-object v2, v1, v0

    const/16 v0, 0x39

    const-string v2, "dang"

    aput-object v2, v1, v0

    const/16 v0, 0x3a

    const-string v2, "dao"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string v2, "de"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string v2, "deng"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string v2, "di"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string v2, "dian"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string v2, "diao"

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-string v2, "die"

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-string v2, "ding"

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-string v2, "diu"

    aput-object v2, v1, v0

    const/16 v0, 0x43

    const-string v2, "dong"

    aput-object v2, v1, v0

    const/16 v0, 0x44

    const-string v2, "dou"

    aput-object v2, v1, v0

    const/16 v0, 0x45

    const-string v2, "du"

    aput-object v2, v1, v0

    const/16 v0, 0x46

    const-string v2, "duan"

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-string v2, "dui"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    const-string v2, "dun"

    aput-object v2, v1, v0

    const/16 v0, 0x49

    const-string v2, "duo"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "e"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "en"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    const-string v2, "er"

    aput-object v2, v1, v0

    const/16 v0, 0x4d

    const-string v2, "fa"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "fan"

    aput-object v2, v1, v0

    const/16 v0, 0x4f

    const-string v2, "fang"

    aput-object v2, v1, v0

    const/16 v0, 0x50

    const-string v2, "fei"

    aput-object v2, v1, v0

    const/16 v0, 0x51

    const-string v2, "fen"

    aput-object v2, v1, v0

    const/16 v0, 0x52

    const-string v2, "feng"

    aput-object v2, v1, v0

    const/16 v0, 0x53

    const-string v2, "fo"

    aput-object v2, v1, v0

    const/16 v0, 0x54

    const-string v2, "fou"

    aput-object v2, v1, v0

    const/16 v0, 0x55

    const-string v2, "fu"

    aput-object v2, v1, v0

    const/16 v0, 0x56

    const-string v2, "ga"

    aput-object v2, v1, v0

    const/16 v0, 0x57

    const-string v2, "gai"

    aput-object v2, v1, v0

    const/16 v0, 0x58

    const-string v2, "gan"

    aput-object v2, v1, v0

    const/16 v0, 0x59

    const-string v2, "gang"

    aput-object v2, v1, v0

    const/16 v0, 0x5a

    const-string v2, "gao"

    aput-object v2, v1, v0

    const/16 v0, 0x5b

    const-string v2, "ge"

    aput-object v2, v1, v0

    const/16 v0, 0x5c

    const-string v2, "gei"

    aput-object v2, v1, v0

    const/16 v0, 0x5d

    const-string v2, "gen"

    aput-object v2, v1, v0

    const/16 v0, 0x5e

    const-string v2, "geng"

    aput-object v2, v1, v0

    const/16 v0, 0x5f

    const-string v2, "gong"

    aput-object v2, v1, v0

    const/16 v0, 0x60

    const-string v2, "gou"

    aput-object v2, v1, v0

    const/16 v0, 0x61

    const-string v2, "gu"

    aput-object v2, v1, v0

    const/16 v0, 0x62

    const-string v2, "gua"

    aput-object v2, v1, v0

    const/16 v0, 0x63

    const-string v2, "guai"

    aput-object v2, v1, v0

    const/16 v0, 0x64

    const-string v2, "guan"

    aput-object v2, v1, v0

    const/16 v0, 0x65

    const-string v2, "guang"

    aput-object v2, v1, v0

    const/16 v0, 0x66

    const-string v2, "gui"

    aput-object v2, v1, v0

    const/16 v0, 0x67

    const-string v2, "gun"

    aput-object v2, v1, v0

    const/16 v0, 0x68

    const-string v2, "guo"

    aput-object v2, v1, v0

    const/16 v0, 0x69

    const-string v2, "ha"

    aput-object v2, v1, v0

    const/16 v0, 0x6a

    const-string v2, "hai"

    aput-object v2, v1, v0

    const/16 v0, 0x6b

    const-string v2, "han"

    aput-object v2, v1, v0

    const/16 v0, 0x6c

    const-string v2, "hang"

    aput-object v2, v1, v0

    const/16 v0, 0x6d

    const-string v2, "hao"

    aput-object v2, v1, v0

    const/16 v0, 0x6e

    const-string v2, "he"

    aput-object v2, v1, v0

    const/16 v0, 0x6f

    const-string v2, "hei"

    aput-object v2, v1, v0

    const/16 v0, 0x70

    const-string v2, "hen"

    aput-object v2, v1, v0

    const/16 v0, 0x71

    const-string v2, "heng"

    aput-object v2, v1, v0

    const/16 v0, 0x72

    const-string v2, "hong"

    aput-object v2, v1, v0

    const/16 v0, 0x73

    const-string v2, "hou"

    aput-object v2, v1, v0

    const/16 v0, 0x74

    const-string v2, "hu"

    aput-object v2, v1, v0

    const/16 v0, 0x75

    const-string v2, "hua"

    aput-object v2, v1, v0

    const/16 v0, 0x76

    const-string v2, "huai"

    aput-object v2, v1, v0

    const/16 v0, 0x77

    const-string v2, "huan"

    aput-object v2, v1, v0

    const/16 v0, 0x78

    const-string v2, "huang"

    aput-object v2, v1, v0

    const/16 v0, 0x79

    const-string v2, "hui"

    aput-object v2, v1, v0

    const/16 v0, 0x7a

    const-string v2, "hun"

    aput-object v2, v1, v0

    const/16 v0, 0x7b

    const-string v2, "huo"

    aput-object v2, v1, v0

    const/16 v0, 0x7c

    const-string v2, "ji"

    aput-object v2, v1, v0

    const/16 v0, 0x7d

    const-string v2, "jia"

    aput-object v2, v1, v0

    const/16 v0, 0x7e

    const-string v2, "jian"

    aput-object v2, v1, v0

    const/16 v0, 0x7f

    const-string v2, "jiang"

    aput-object v2, v1, v0

    const/16 v0, 0x80

    const-string v2, "jiao"

    aput-object v2, v1, v0

    const/16 v0, 0x81

    const-string v2, "jie"

    aput-object v2, v1, v0

    const/16 v0, 0x82

    const-string v2, "jin"

    aput-object v2, v1, v0

    const/16 v0, 0x83

    const-string v2, "jing"

    aput-object v2, v1, v0

    const/16 v0, 0x84

    const-string v2, "jiong"

    aput-object v2, v1, v0

    const/16 v0, 0x85

    const-string v2, "jiu"

    aput-object v2, v1, v0

    const/16 v0, 0x86

    const-string v2, "ju"

    aput-object v2, v1, v0

    const/16 v0, 0x87

    const-string v2, "juan"

    aput-object v2, v1, v0

    const/16 v0, 0x88

    const-string v2, "jue"

    aput-object v2, v1, v0

    const/16 v0, 0x89

    const-string v2, "jun"

    aput-object v2, v1, v0

    const/16 v0, 0x8a

    const-string v2, "ka"

    aput-object v2, v1, v0

    const/16 v0, 0x8b

    const-string v2, "kai"

    aput-object v2, v1, v0

    const/16 v0, 0x8c

    const-string v2, "kan"

    aput-object v2, v1, v0

    const/16 v0, 0x8d

    const-string v2, "kang"

    aput-object v2, v1, v0

    const/16 v0, 0x8e

    const-string v2, "kao"

    aput-object v2, v1, v0

    const/16 v0, 0x8f

    const-string v2, "ke"

    aput-object v2, v1, v0

    const/16 v0, 0x90

    const-string v2, "ken"

    aput-object v2, v1, v0

    const/16 v0, 0x91

    const-string v2, "keng"

    aput-object v2, v1, v0

    const/16 v0, 0x92

    const-string v2, "kong"

    aput-object v2, v1, v0

    const/16 v0, 0x93

    const-string v2, "kou"

    aput-object v2, v1, v0

    const/16 v0, 0x94

    const-string v2, "ku"

    aput-object v2, v1, v0

    const/16 v0, 0x95

    const-string v2, "kua"

    aput-object v2, v1, v0

    const/16 v0, 0x96

    const-string v2, "kuai"

    aput-object v2, v1, v0

    const/16 v0, 0x97

    const-string v2, "kuan"

    aput-object v2, v1, v0

    const/16 v0, 0x98

    const-string v2, "kuang"

    aput-object v2, v1, v0

    const/16 v0, 0x99

    const-string v2, "kui"

    aput-object v2, v1, v0

    const/16 v0, 0x9a

    const-string v2, "kun"

    aput-object v2, v1, v0

    const/16 v0, 0x9b

    const-string v2, "kuo"

    aput-object v2, v1, v0

    const/16 v0, 0x9c

    const-string v2, "la"

    aput-object v2, v1, v0

    const/16 v0, 0x9d

    const-string v2, "lai"

    aput-object v2, v1, v0

    const/16 v0, 0x9e

    const-string v2, "lan"

    aput-object v2, v1, v0

    const/16 v0, 0x9f

    const-string v2, "lang"

    aput-object v2, v1, v0

    const/16 v0, 0xa0

    const-string v2, "lao"

    aput-object v2, v1, v0

    const/16 v0, 0xa1

    const-string v2, "le"

    aput-object v2, v1, v0

    const/16 v0, 0xa2

    const-string v2, "lei"

    aput-object v2, v1, v0

    const/16 v0, 0xa3

    const-string v2, "leng"

    aput-object v2, v1, v0

    const/16 v0, 0xa4

    const-string v2, "li"

    aput-object v2, v1, v0

    const/16 v0, 0xa5

    const-string v2, "lia"

    aput-object v2, v1, v0

    const/16 v0, 0xa6

    const-string v2, "lian"

    aput-object v2, v1, v0

    const/16 v0, 0xa7

    const-string v2, "liang"

    aput-object v2, v1, v0

    const/16 v0, 0xa8

    const-string v2, "liao"

    aput-object v2, v1, v0

    const/16 v0, 0xa9

    const-string v2, "lie"

    aput-object v2, v1, v0

    const/16 v0, 0xaa

    const-string v2, "lin"

    aput-object v2, v1, v0

    const/16 v0, 0xab

    const-string v2, "ling"

    aput-object v2, v1, v0

    const/16 v0, 0xac

    const-string v2, "liu"

    aput-object v2, v1, v0

    const/16 v0, 0xad

    const-string v2, "long"

    aput-object v2, v1, v0

    const/16 v0, 0xae

    const-string v2, "lou"

    aput-object v2, v1, v0

    const/16 v0, 0xaf

    const-string v2, "lu"

    aput-object v2, v1, v0

    const/16 v0, 0xb0

    const-string v2, "lv"

    aput-object v2, v1, v0

    const/16 v0, 0xb1

    const-string v2, "luan"

    aput-object v2, v1, v0

    const/16 v0, 0xb2

    const-string v2, "lue"

    aput-object v2, v1, v0

    const/16 v0, 0xb3

    const-string v2, "lun"

    aput-object v2, v1, v0

    const/16 v0, 0xb4

    const-string v2, "luo"

    aput-object v2, v1, v0

    const/16 v0, 0xb5

    const-string v2, "ma"

    aput-object v2, v1, v0

    const/16 v0, 0xb6

    const-string v2, "mai"

    aput-object v2, v1, v0

    const/16 v0, 0xb7

    const-string v2, "man"

    aput-object v2, v1, v0

    const/16 v0, 0xb8

    const-string v2, "mang"

    aput-object v2, v1, v0

    const/16 v0, 0xb9

    const-string v2, "mao"

    aput-object v2, v1, v0

    const/16 v0, 0xba

    const-string v2, "me"

    aput-object v2, v1, v0

    const/16 v0, 0xbb

    const-string v2, "mei"

    aput-object v2, v1, v0

    const/16 v0, 0xbc

    const-string v2, "men"

    aput-object v2, v1, v0

    const/16 v0, 0xbd

    const-string v2, "meng"

    aput-object v2, v1, v0

    const/16 v0, 0xbe

    const-string v2, "mi"

    aput-object v2, v1, v0

    const/16 v0, 0xbf

    const-string v2, "mian"

    aput-object v2, v1, v0

    const/16 v0, 0xc0

    const-string v2, "miao"

    aput-object v2, v1, v0

    const/16 v0, 0xc1

    const-string v2, "mie"

    aput-object v2, v1, v0

    const/16 v0, 0xc2

    const-string v2, "min"

    aput-object v2, v1, v0

    const/16 v0, 0xc3

    const-string v2, "ming"

    aput-object v2, v1, v0

    const/16 v0, 0xc4

    const-string v2, "miu"

    aput-object v2, v1, v0

    const/16 v0, 0xc5

    const-string v2, "mo"

    aput-object v2, v1, v0

    const/16 v0, 0xc6

    const-string v2, "mou"

    aput-object v2, v1, v0

    const/16 v0, 0xc7

    const-string v2, "mu"

    aput-object v2, v1, v0

    const/16 v0, 0xc8

    const-string v2, "na"

    aput-object v2, v1, v0

    const/16 v0, 0xc9

    const-string v2, "nai"

    aput-object v2, v1, v0

    const/16 v0, 0xca

    const-string v2, "nan"

    aput-object v2, v1, v0

    const/16 v0, 0xcb

    const-string v2, "nang"

    aput-object v2, v1, v0

    const/16 v0, 0xcc

    const-string v2, "nao"

    aput-object v2, v1, v0

    const/16 v0, 0xcd

    const-string v2, "ne"

    aput-object v2, v1, v0

    const/16 v0, 0xce

    const-string v2, "nei"

    aput-object v2, v1, v0

    const/16 v0, 0xcf

    const-string v2, "nen"

    aput-object v2, v1, v0

    const/16 v0, 0xd0

    const-string v2, "neng"

    aput-object v2, v1, v0

    const/16 v0, 0xd1

    const-string v2, "ni"

    aput-object v2, v1, v0

    const/16 v0, 0xd2

    const-string v2, "nian"

    aput-object v2, v1, v0

    const/16 v0, 0xd3

    const-string v2, "niang"

    aput-object v2, v1, v0

    const/16 v0, 0xd4

    const-string v2, "niao"

    aput-object v2, v1, v0

    const/16 v0, 0xd5

    const-string v2, "nie"

    aput-object v2, v1, v0

    const/16 v0, 0xd6

    const-string v2, "nin"

    aput-object v2, v1, v0

    const/16 v0, 0xd7

    const-string v2, "ning"

    aput-object v2, v1, v0

    const/16 v0, 0xd8

    const-string v2, "niu"

    aput-object v2, v1, v0

    const/16 v0, 0xd9

    const-string v2, "nong"

    aput-object v2, v1, v0

    const/16 v0, 0xda

    const-string v2, "nu"

    aput-object v2, v1, v0

    const/16 v0, 0xdb

    const-string v2, "nv"

    aput-object v2, v1, v0

    const/16 v0, 0xdc

    const-string v2, "nuan"

    aput-object v2, v1, v0

    const/16 v0, 0xdd

    const-string v2, "nue"

    aput-object v2, v1, v0

    const/16 v0, 0xde

    const-string v2, "nuo"

    aput-object v2, v1, v0

    const/16 v0, 0xdf

    const-string v2, "o"

    aput-object v2, v1, v0

    const/16 v0, 0xe0

    const-string v2, "ou"

    aput-object v2, v1, v0

    const/16 v0, 0xe1

    const-string v2, "pa"

    aput-object v2, v1, v0

    const/16 v0, 0xe2

    const-string v2, "pai"

    aput-object v2, v1, v0

    const/16 v0, 0xe3

    const-string v2, "pan"

    aput-object v2, v1, v0

    const/16 v0, 0xe4

    const-string v2, "pang"

    aput-object v2, v1, v0

    const/16 v0, 0xe5

    const-string v2, "pao"

    aput-object v2, v1, v0

    const/16 v0, 0xe6

    const-string v2, "pei"

    aput-object v2, v1, v0

    const/16 v0, 0xe7

    const-string v2, "pen"

    aput-object v2, v1, v0

    const/16 v0, 0xe8

    const-string v2, "peng"

    aput-object v2, v1, v0

    const/16 v0, 0xe9

    const-string v2, "pi"

    aput-object v2, v1, v0

    const/16 v0, 0xea

    const-string v2, "pian"

    aput-object v2, v1, v0

    const/16 v0, 0xeb

    const-string v2, "piao"

    aput-object v2, v1, v0

    const/16 v0, 0xec

    const-string v2, "pie"

    aput-object v2, v1, v0

    const/16 v0, 0xed

    const-string v2, "pin"

    aput-object v2, v1, v0

    const/16 v0, 0xee

    const-string v2, "ping"

    aput-object v2, v1, v0

    const/16 v0, 0xef

    const-string v2, "po"

    aput-object v2, v1, v0

    const/16 v0, 0xf0

    const-string v2, "pu"

    aput-object v2, v1, v0

    const/16 v0, 0xf1

    const-string v2, "qi"

    aput-object v2, v1, v0

    const/16 v0, 0xf2

    const-string v2, "qia"

    aput-object v2, v1, v0

    const/16 v0, 0xf3

    const-string v2, "qian"

    aput-object v2, v1, v0

    const/16 v0, 0xf4

    const-string v2, "qiang"

    aput-object v2, v1, v0

    const/16 v0, 0xf5

    const-string v2, "qiao"

    aput-object v2, v1, v0

    const/16 v0, 0xf6

    const-string v2, "qie"

    aput-object v2, v1, v0

    const/16 v0, 0xf7

    const-string v2, "qin"

    aput-object v2, v1, v0

    const/16 v0, 0xf8

    const-string v2, "qing"

    aput-object v2, v1, v0

    const/16 v0, 0xf9

    const-string v2, "qiong"

    aput-object v2, v1, v0

    const/16 v0, 0xfa

    const-string v2, "qiu"

    aput-object v2, v1, v0

    const/16 v0, 0xfb

    const-string v2, "qu"

    aput-object v2, v1, v0

    const/16 v0, 0xfc

    const-string v2, "quan"

    aput-object v2, v1, v0

    const/16 v0, 0xfd

    const-string v2, "que"

    aput-object v2, v1, v0

    const/16 v0, 0xfe

    const-string v2, "qun"

    aput-object v2, v1, v0

    const/16 v0, 0xff

    const-string v2, "ran"

    aput-object v2, v1, v0

    const/16 v0, 0x100

    const-string v2, "rang"

    aput-object v2, v1, v0

    const/16 v0, 0x101

    const-string v2, "rao"

    aput-object v2, v1, v0

    const/16 v0, 0x102

    const-string v2, "re"

    aput-object v2, v1, v0

    const/16 v0, 0x103

    const-string v2, "ren"

    aput-object v2, v1, v0

    const/16 v0, 0x104

    const-string v2, "reng"

    aput-object v2, v1, v0

    const/16 v0, 0x105

    const-string v2, "ri"

    aput-object v2, v1, v0

    const/16 v0, 0x106

    const-string v2, "rong"

    aput-object v2, v1, v0

    const/16 v0, 0x107

    const-string v2, "rou"

    aput-object v2, v1, v0

    const/16 v0, 0x108

    const-string v2, "ru"

    aput-object v2, v1, v0

    const/16 v0, 0x109

    const-string v2, "ruan"

    aput-object v2, v1, v0

    const/16 v0, 0x10a

    const-string v2, "rui"

    aput-object v2, v1, v0

    const/16 v0, 0x10b

    const-string v2, "run"

    aput-object v2, v1, v0

    const/16 v0, 0x10c

    const-string v2, "ruo"

    aput-object v2, v1, v0

    const/16 v0, 0x10d

    const-string v2, "sa"

    aput-object v2, v1, v0

    const/16 v0, 0x10e

    const-string v2, "sai"

    aput-object v2, v1, v0

    const/16 v0, 0x10f

    const-string v2, "san"

    aput-object v2, v1, v0

    const/16 v0, 0x110

    const-string v2, "sang"

    aput-object v2, v1, v0

    const/16 v0, 0x111

    const-string v2, "sao"

    aput-object v2, v1, v0

    const/16 v0, 0x112

    const-string v2, "se"

    aput-object v2, v1, v0

    const/16 v0, 0x113

    const-string v2, "sen"

    aput-object v2, v1, v0

    const/16 v0, 0x114

    const-string v2, "seng"

    aput-object v2, v1, v0

    const/16 v0, 0x115

    const-string v2, "sha"

    aput-object v2, v1, v0

    const/16 v0, 0x116

    const-string v2, "shai"

    aput-object v2, v1, v0

    const/16 v0, 0x117

    const-string v2, "shan"

    aput-object v2, v1, v0

    const/16 v0, 0x118

    const-string v2, "shang"

    aput-object v2, v1, v0

    const/16 v0, 0x119

    const-string v2, "shao"

    aput-object v2, v1, v0

    const/16 v0, 0x11a

    const-string v2, "she"

    aput-object v2, v1, v0

    const/16 v0, 0x11b

    const-string v2, "shen"

    aput-object v2, v1, v0

    const/16 v0, 0x11c

    const-string v2, "sheng"

    aput-object v2, v1, v0

    const/16 v0, 0x11d

    const-string v2, "shi"

    aput-object v2, v1, v0

    const/16 v0, 0x11e

    const-string v2, "shou"

    aput-object v2, v1, v0

    const/16 v0, 0x11f

    const-string v2, "shu"

    aput-object v2, v1, v0

    const/16 v0, 0x120

    const-string v2, "shua"

    aput-object v2, v1, v0

    const/16 v0, 0x121

    const-string v2, "shuai"

    aput-object v2, v1, v0

    const/16 v0, 0x122

    const-string v2, "shuan"

    aput-object v2, v1, v0

    const/16 v0, 0x123

    const-string v2, "shuang"

    aput-object v2, v1, v0

    const/16 v0, 0x124

    const-string v2, "shui"

    aput-object v2, v1, v0

    const/16 v0, 0x125

    const-string v2, "shun"

    aput-object v2, v1, v0

    const/16 v0, 0x126

    const-string v2, "shuo"

    aput-object v2, v1, v0

    const/16 v0, 0x127

    const-string v2, "si"

    aput-object v2, v1, v0

    const/16 v0, 0x128

    const-string v2, "song"

    aput-object v2, v1, v0

    const/16 v0, 0x129

    const-string v2, "sou"

    aput-object v2, v1, v0

    const/16 v0, 0x12a

    const-string v2, "su"

    aput-object v2, v1, v0

    const/16 v0, 0x12b

    const-string v2, "suan"

    aput-object v2, v1, v0

    const/16 v0, 0x12c

    const-string v2, "sui"

    aput-object v2, v1, v0

    const/16 v0, 0x12d

    const-string v2, "sun"

    aput-object v2, v1, v0

    const/16 v0, 0x12e

    const-string v2, "suo"

    aput-object v2, v1, v0

    const/16 v0, 0x12f

    const-string v2, "ta"

    aput-object v2, v1, v0

    const/16 v0, 0x130

    const-string v2, "tai"

    aput-object v2, v1, v0

    const/16 v0, 0x131

    const-string v2, "tan"

    aput-object v2, v1, v0

    const/16 v0, 0x132

    const-string v2, "tang"

    aput-object v2, v1, v0

    const/16 v0, 0x133

    const-string v2, "tao"

    aput-object v2, v1, v0

    const/16 v0, 0x134

    const-string v2, "te"

    aput-object v2, v1, v0

    const/16 v0, 0x135

    const-string v2, "teng"

    aput-object v2, v1, v0

    const/16 v0, 0x136

    const-string v2, "ti"

    aput-object v2, v1, v0

    const/16 v0, 0x137

    const-string v2, "tian"

    aput-object v2, v1, v0

    const/16 v0, 0x138

    const-string v2, "tiao"

    aput-object v2, v1, v0

    const/16 v0, 0x139

    const-string v2, "tie"

    aput-object v2, v1, v0

    const/16 v0, 0x13a

    const-string v2, "ting"

    aput-object v2, v1, v0

    const/16 v0, 0x13b

    const-string v2, "tong"

    aput-object v2, v1, v0

    const/16 v0, 0x13c

    const-string v2, "tou"

    aput-object v2, v1, v0

    const/16 v0, 0x13d

    const-string v2, "tu"

    aput-object v2, v1, v0

    const/16 v0, 0x13e

    const-string v2, "tuan"

    aput-object v2, v1, v0

    const/16 v0, 0x13f

    const-string v2, "tui"

    aput-object v2, v1, v0

    const/16 v0, 0x140

    const-string v2, "tun"

    aput-object v2, v1, v0

    const/16 v0, 0x141

    const-string v2, "tuo"

    aput-object v2, v1, v0

    const/16 v0, 0x142

    const-string v2, "wa"

    aput-object v2, v1, v0

    const/16 v0, 0x143

    const-string v2, "wai"

    aput-object v2, v1, v0

    const/16 v0, 0x144

    const-string v2, "wan"

    aput-object v2, v1, v0

    const/16 v0, 0x145

    const-string v2, "wang"

    aput-object v2, v1, v0

    const/16 v0, 0x146

    const-string v2, "wei"

    aput-object v2, v1, v0

    const/16 v0, 0x147

    const-string v2, "wen"

    aput-object v2, v1, v0

    const/16 v0, 0x148

    const-string v2, "weng"

    aput-object v2, v1, v0

    const/16 v0, 0x149

    const-string v2, "wo"

    aput-object v2, v1, v0

    const/16 v0, 0x14a

    const-string v2, "wu"

    aput-object v2, v1, v0

    const/16 v0, 0x14b

    const-string v2, "xi"

    aput-object v2, v1, v0

    const/16 v0, 0x14c

    const-string v2, "xia"

    aput-object v2, v1, v0

    const/16 v0, 0x14d

    const-string v2, "xian"

    aput-object v2, v1, v0

    const/16 v0, 0x14e

    const-string v2, "xiang"

    aput-object v2, v1, v0

    const/16 v0, 0x14f

    const-string v2, "xiao"

    aput-object v2, v1, v0

    const/16 v0, 0x150

    const-string v2, "xie"

    aput-object v2, v1, v0

    const/16 v0, 0x151

    const-string v2, "xin"

    aput-object v2, v1, v0

    const/16 v0, 0x152

    const-string v2, "xing"

    aput-object v2, v1, v0

    const/16 v0, 0x153

    const-string v2, "xiong"

    aput-object v2, v1, v0

    const/16 v0, 0x154

    const-string v2, "xiu"

    aput-object v2, v1, v0

    const/16 v0, 0x155

    const-string v2, "xu"

    aput-object v2, v1, v0

    const/16 v0, 0x156

    const-string v2, "xuan"

    aput-object v2, v1, v0

    const/16 v0, 0x157

    const-string v2, "xue"

    aput-object v2, v1, v0

    const/16 v0, 0x158

    const-string v2, "xun"

    aput-object v2, v1, v0

    const/16 v0, 0x159

    const-string v2, "ya"

    aput-object v2, v1, v0

    const/16 v0, 0x15a

    const-string v2, "yan"

    aput-object v2, v1, v0

    const/16 v0, 0x15b

    const-string v2, "yang"

    aput-object v2, v1, v0

    const/16 v0, 0x15c

    const-string v2, "yao"

    aput-object v2, v1, v0

    const/16 v0, 0x15d

    const-string v2, "ye"

    aput-object v2, v1, v0

    const/16 v0, 0x15e

    const-string v2, "yi"

    aput-object v2, v1, v0

    const/16 v0, 0x15f

    const-string v2, "yin"

    aput-object v2, v1, v0

    const/16 v0, 0x160

    const-string v2, "ying"

    aput-object v2, v1, v0

    const/16 v0, 0x161

    const-string v2, "yo"

    aput-object v2, v1, v0

    const/16 v0, 0x162

    const-string v2, "yong"

    aput-object v2, v1, v0

    const/16 v0, 0x163

    const-string v2, "you"

    aput-object v2, v1, v0

    const/16 v0, 0x164

    const-string v2, "yu"

    aput-object v2, v1, v0

    const/16 v0, 0x165

    const-string v2, "yuan"

    aput-object v2, v1, v0

    const/16 v0, 0x166

    const-string v2, "yue"

    aput-object v2, v1, v0

    const/16 v0, 0x167

    const-string v2, "yun"

    aput-object v2, v1, v0

    const/16 v0, 0x168

    const-string v2, "za"

    aput-object v2, v1, v0

    const/16 v0, 0x169

    const-string v2, "zai"

    aput-object v2, v1, v0

    const/16 v0, 0x16a

    const-string v2, "zan"

    aput-object v2, v1, v0

    const/16 v0, 0x16b

    const-string v2, "zang"

    aput-object v2, v1, v0

    const/16 v0, 0x16c

    const-string v2, "zao"

    aput-object v2, v1, v0

    const/16 v0, 0x16d

    const-string v2, "ze"

    aput-object v2, v1, v0

    const/16 v0, 0x16e

    const-string v2, "zei"

    aput-object v2, v1, v0

    const/16 v0, 0x16f

    const-string v2, "zen"

    aput-object v2, v1, v0

    const/16 v0, 0x170

    const-string v2, "zeng"

    aput-object v2, v1, v0

    const/16 v0, 0x171

    const-string v2, "zha"

    aput-object v2, v1, v0

    const/16 v0, 0x172

    const-string v2, "zhai"

    aput-object v2, v1, v0

    const/16 v0, 0x173

    const-string v2, "zhan"

    aput-object v2, v1, v0

    const/16 v0, 0x174

    const-string v2, "zhang"

    aput-object v2, v1, v0

    const/16 v0, 0x175

    const-string v2, "zhao"

    aput-object v2, v1, v0

    const/16 v0, 0x176

    const-string v2, "zhe"

    aput-object v2, v1, v0

    const/16 v0, 0x177

    const-string v2, "zhen"

    aput-object v2, v1, v0

    const/16 v0, 0x178

    const-string v2, "zheng"

    aput-object v2, v1, v0

    const/16 v0, 0x179

    const-string v2, "zhi"

    aput-object v2, v1, v0

    const/16 v0, 0x17a

    const-string v2, "zhong"

    aput-object v2, v1, v0

    const/16 v0, 0x17b

    const-string v2, "zhou"

    aput-object v2, v1, v0

    const/16 v0, 0x17c

    const-string v2, "zhu"

    aput-object v2, v1, v0

    const/16 v0, 0x17d

    const-string v2, "zhua"

    aput-object v2, v1, v0

    const/16 v0, 0x17e

    const-string v2, "zhuai"

    aput-object v2, v1, v0

    const/16 v0, 0x17f

    const-string v2, "zhuan"

    aput-object v2, v1, v0

    const/16 v0, 0x180

    const-string v2, "zhuang"

    aput-object v2, v1, v0

    const/16 v0, 0x181

    const-string v2, "zhui"

    aput-object v2, v1, v0

    const/16 v0, 0x182

    const-string v2, "zhun"

    aput-object v2, v1, v0

    const/16 v0, 0x183

    const-string v2, "zhuo"

    aput-object v2, v1, v0

    const/16 v0, 0x184

    const-string v2, "zi"

    aput-object v2, v1, v0

    const/16 v0, 0x185

    const-string v2, "zong"

    aput-object v2, v1, v0

    const/16 v0, 0x186

    const-string v2, "zou"

    aput-object v2, v1, v0

    const/16 v0, 0x187

    const-string v2, "zu"

    aput-object v2, v1, v0

    const/16 v0, 0x188

    const-string v2, "zuan"

    aput-object v2, v1, v0

    const/16 v0, 0x189

    const-string v2, "zui"

    aput-object v2, v1, v0

    const/16 v0, 0x18a

    const-string v2, "zun"

    aput-object v2, v1, v0

    const/16 v0, 0x18b

    const-string v2, "zuo"

    aput-object v2, v1, v0

    .line 1041
    sput-object v1, Lcom/libs/qrcodecamera/tool/RxDataTool;->pyStr:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        -0x4f5f
        -0x4f5d
        -0x4f50
        -0x4f47
        -0x4f44
        -0x4f3b
        -0x4f29
        -0x4f21
        -0x4f12
        -0x4f06
        -0x4e53
        -0x4e44
        -0x4e40
        -0x4e3a
        -0x4e22
        -0x4e16
        -0x4e12
        -0x4e0e
        -0x4e08
        -0x4d5d
        -0x4d48
        -0x4d3f
        -0x4d3e
        -0x4d33
        -0x4d2c
        -0x4d27
        -0x4d22
        -0x4d1d
        -0x4d1b
        -0x4d10
        -0x4d0d
        -0x4d03
        -0x4c54
        -0x4c4b
        -0x4c45
        -0x4c3b
        -0x4c2c
        -0x4c1c
        -0x4c17
        -0x4c0b
        -0x4b59
        -0x4b58
        -0x4b51
        -0x4b4b
        -0x4b46
        -0x4b3f
        -0x4b3d
        -0x4b31
        -0x4b2b
        -0x4b2a
        -0x4b26
        -0x4b23
        -0x4b1b
        -0x4b18
        -0x4b12
        -0x4b0c
        -0x4a5e
        -0x4a4f
        -0x4a4a
        -0x4a3e
        -0x4a3b
        -0x4a34
        -0x4a21
        -0x4a11
        -0x4a08
        -0x495f
        -0x4956
        -0x4955
        -0x494b
        -0x4944
        -0x4935
        -0x492f
        -0x492b
        -0x4922
        -0x4916
        -0x4909
        -0x4908
        -0x485e
        -0x4856
        -0x4845
        -0x483a
        -0x482e
        -0x481f
        -0x4810
        -0x480f
        -0x480e
        -0x473f
        -0x473d
        -0x4737
        -0x472c
        -0x4723
        -0x4719
        -0x4708
        -0x4707
        -0x4705
        -0x465c
        -0x464d
        -0x4644
        -0x4632
        -0x462c
        -0x4629
        -0x461e
        -0x461b
        -0x460b
        -0x4608
        -0x4602
        -0x455f
        -0x4558
        -0x4545
        -0x4542
        -0x4539
        -0x4527
        -0x4525
        -0x4521
        -0x451c
        -0x4513
        -0x450c
        -0x4458
        -0x444f
        -0x444a
        -0x443c
        -0x442e
        -0x4419
        -0x4413
        -0x4409
        -0x4332
        -0x4321
        -0x4257
        -0x424a
        -0x422e
        -0x4213
        -0x415d
        -0x4144
        -0x4142
        -0x4131
        -0x4118
        -0x4111
        -0x4107
        -0x405a
        -0x4056
        -0x4051
        -0x404b
        -0x4044
        -0x4040
        -0x4031
        -0x402d
        -0x402b
        -0x4027
        -0x4023
        -0x401c
        -0x4017
        -0x4013
        -0x4011
        -0x4009
        -0x3f5c
        -0x3f58
        -0x3f54
        -0x3f4d
        -0x3f4a
        -0x3f3b
        -0x3f34
        -0x3f2b
        -0x3f29
        -0x3f1e
        -0x3f1b
        -0x3e57
        -0x3e56
        -0x3e48
        -0x3e3d
        -0x3e30
        -0x3e2b
        -0x3e1f
        -0x3e11
        -0x3e06
        -0x3d5b
        -0x3d55
        -0x3d41
        -0x3d33
        -0x3d2d
        -0x3d2b
        -0x3d24
        -0x3d18
        -0x3d0f
        -0x3d09
        -0x3c5e
        -0x3c58
        -0x3c4c
        -0x3c4b
        -0x3c3b
        -0x3c38
        -0x3c30
        -0x3c22
        -0x3c19
        -0x3c11
        -0x3c0f
        -0x3c09
        -0x3c03
        -0x3c02
        -0x3b4f
        -0x3b4c
        -0x3b3d
        -0x3b36
        -0x3b31
        -0x3b2e
        -0x3b2d
        -0x3b28
        -0x3b27
        -0x3b25
        -0x3b24
        -0x3b23
        -0x3b18
        -0x3b11
        -0x3b0f
        -0x3b0d
        -0x3b06
        -0x3b05
        -0x3a5d
        -0x3a59
        -0x3a55
        -0x3a52
        -0x3a51
        -0x3a50
        -0x3a4e
        -0x3a4a
        -0x3a49
        -0x3a42
        -0x3a3c
        -0x3a36
        -0x3a2e
        -0x3a29
        -0x3a22
        -0x3a19
        -0x3a17
        -0x3a09
        -0x3956
        -0x3952
        -0x394e
        -0x394c
        -0x3947
        -0x393e
        -0x3935
        -0x3926
        -0x3902
        -0x385d
        -0x3847
        -0x383f
        -0x3830
        -0x382b
        -0x3820
        -0x3813
        -0x3811
        -0x3809
        -0x375a
        -0x374f
        -0x3747
        -0x3745
        -0x3741
        -0x373c
        -0x3739
        -0x3737
        -0x372d
        -0x372b
        -0x372a
        -0x3720
        -0x371d
        -0x3713
        -0x3711
        -0x370e
        -0x370c
        -0x370a
        -0x3707
        -0x3703
        -0x365d
        -0x365a
        -0x3656
        -0x3653
        -0x3652
        -0x3651
        -0x3648
        -0x3646
        -0x3636
        -0x362e
        -0x3623
        -0x3617
        -0x3607
        -0x355a
        -0x352b
        -0x3521
        -0x345e
        -0x345c
        -0x3458
        -0x3456
        -0x3453
        -0x344f
        -0x344b
        -0x3447
        -0x3437
        -0x342f
        -0x342c
        -0x341f
        -0x341c
        -0x3411
        -0x340e
        -0x3406
        -0x335b
        -0x3352
        -0x3340
        -0x3333
        -0x3328
        -0x3327
        -0x3323
        -0x3314
        -0x330c
        -0x3307
        -0x3304
        -0x3258
        -0x324b
        -0x3247
        -0x323c
        -0x323a
        -0x3234
        -0x3231
        -0x3226
        -0x321f
        -0x321d
        -0x320c
        -0x3202
        -0x313f
        -0x3135
        -0x3132
        -0x3129
        -0x310c
        -0x3047
        -0x303a
        -0x3020
        -0x300c
        -0x2f58
        -0x2f43
        -0x2f39
        -0x2f2a
        -0x2f23
        -0x2f1a
        -0x2f07
        -0x2e5b
        -0x2e55
        -0x2e47
        -0x2e37
        -0x2e16
        -0x2e05
        -0x2d54
        -0x2d45
        -0x2d10
        -0x2c5e
        -0x2c4c
        -0x2c4b
        -0x2c3c
        -0x2c27
        -0x2b59
        -0x2b45
        -0x2b3b
        -0x2b2f
        -0x2b2c
        -0x2b25
        -0x2b21
        -0x2b1e
        -0x2b10
        -0x2b0c
        -0x2b0b
        -0x2b0a
        -0x2b06
        -0x2a56
        -0x2a50
        -0x2a3f
        -0x2a30
        -0x2a26
        -0x2a1c
        -0x2a0c
        -0x295b
        -0x2930
        -0x2925
        -0x2917
        -0x285b
        -0x2859
        -0x2858
        -0x2852
        -0x284b
        -0x2845
        -0x2843
        -0x2838
        -0x2829
        -0x2822
        -0x281e
        -0x2816
        -0x2814
        -0x2810
        -0x280e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 351
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static byte2FitSize(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "shouldn\'t be less than zero!"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-gez v4, :cond_1

    .line 719
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.3fB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v4, p0, v0

    if-gez v4, :cond_2

    .line 721
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.3fKB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v4, p0, v0

    if-gez v4, :cond_3

    .line 723
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.3fMB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 725
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.3fGB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2Size(JLcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;)D
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 666
    :cond_0
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxDataTool$1;->$SwitchMap$com$libs$qrcodecamera$tool$RxConstTool$MemoryUnit:[I

    invoke-virtual {p2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    div-double/2addr p0, v0

    return-wide p0

    :cond_1
    long-to-double p0, p0

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    goto :goto_0

    :cond_2
    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    goto :goto_0

    :cond_3
    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    goto :goto_0
.end method

.method public static bytes2Chars([B)[C
    .locals 4

    .line 642
    array-length v0, p0

    .line 643
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 645
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 6

    .line 575
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 576
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 577
    sget-object v4, Lcom/libs/qrcodecamera/tool/RxDataTool;->HEX_DIGITS:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 578
    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static bytes2InputStream([B)Ljava/io/InputStream;
    .locals 1

    .line 772
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static bytes2OutputStream([B)Ljava/io/OutputStream;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 797
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 804
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v3, v0

    .line 801
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 804
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v3

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 805
    throw p0
.end method

.method public static chars2Bytes([C)[B
    .locals 4

    .line 627
    array-length v0, p0

    .line 628
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 630
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static cn2PY(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 555
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 556
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->oneCn2PY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "?"

    .line 561
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format2Decimals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 336
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->stringToDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->stringToDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->stringToDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string p0, "\u94f6\u884c\u5361\u53f7\u6709\u8bef"

    return-object p0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " **** **** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCardEnd4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string p0, "\u94f6\u884c\u5361\u53f7\u6709\u8bef"

    return-object p0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAmountValue(D)Ljava/lang/String;
    .locals 1

    .line 891
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxDataTool;->AMOUNT_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAmountValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 901
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 904
    :cond_0
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxDataTool;->AMOUNT_FORMAT:Ljava/text/DecimalFormat;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimalYearName(I)Ljava/lang/String;
    .locals 12

    const-string v0, "\u7334"

    const-string v1, "\u9e21"

    const-string v2, "\u72d7"

    const-string v3, "\u732a"

    const-string v4, "\u9f20"

    const-string v5, "\u725b"

    const-string v6, "\u864e"

    const-string v7, "\u5154"

    const-string v8, "\u9f99"

    const-string v9, "\u86c7"

    const-string v10, "\u9a6c"

    const-string v11, "\u7f8a"

    .line 171
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 172
    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getAstro(II)Ljava/lang/String;
    .locals 12

    const-string v0, "\u9b54\u7faf\u5ea7"

    const-string v1, "\u6c34\u74f6\u5ea7"

    const-string v2, "\u53cc\u9c7c\u5ea7"

    const-string v3, "\u767d\u7f8a\u5ea7"

    const-string v4, "\u91d1\u725b\u5ea7"

    const-string v5, "\u53cc\u5b50\u5ea7"

    const-string v6, "\u5de8\u87f9\u5ea7"

    const-string v7, "\u72ee\u5b50\u5ea7"

    const-string v8, "\u5904\u5973\u5ea7"

    const-string v9, "\u5929\u79e4\u5ea7"

    const-string v10, "\u5929\u874e\u5ea7"

    const-string v11, "\u5c04\u624b\u5ea7"

    .line 146
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    new-array v2, v1, [I

    .line 147
    fill-array-data v2, :array_0

    const-string v3, "\u7334\u5e74\u9a6c\u6708\u5ea7"

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    if-gt p0, v1, :cond_3

    const/16 v4, 0x1f

    if-le p1, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p0, -0x1

    .line 157
    aget v2, v2, v3

    if-ge p1, v2, :cond_2

    move p0, v3

    .line 161
    :cond_2
    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0

    :cond_3
    :goto_0
    return-object v3

    nop

    :array_0
    .array-data 4
        0x16
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x17
        0x16
    .end array-data
.end method

.method public static getPYAllFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 529
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 533
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 534
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v2}, Lcom/libs/qrcodecamera/tool/RxDataTool;->oneCn2PY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v3
.end method

.method public static getPYFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 510
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 514
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 515
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->oneCn2PY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPercentValue(D)Ljava/lang/String;
    .locals 1

    .line 976
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    .line 977
    invoke-static {v0, p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->getPercentValue(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPercentValue(DI)Ljava/lang/String;
    .locals 1

    .line 965
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 966
    invoke-static {v0, p2}, Lcom/libs/qrcodecamera/tool/RxDataTool;->getPercentValue(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPercentValue(Ljava/math/BigDecimal;I)Ljava/lang/String;
    .locals 2

    .line 953
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 954
    invoke-static {p0, p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->getRoundUp(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundUp(DI)Ljava/lang/String;
    .locals 1

    .line 926
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x4

    .line 927
    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundUp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 938
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 941
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x4

    .line 942
    invoke-virtual {v0, p1, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundUp(Ljava/math/BigDecimal;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 915
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hex2Dec(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 616
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 6

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 593
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 596
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    ushr-int/lit8 v1, v0, 0x1

    .line 597
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    shr-int/lit8 v3, v2, 0x1

    .line 599
    aget-char v4, p0, v2

    invoke-static {v4}, Lcom/libs/qrcodecamera/tool/RxDataTool;->hex2Dec(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/libs/qrcodecamera/tool/RxDataTool;->hex2Dec(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1

    .line 594
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u957f\u5ea6\u4e0d\u662f\u5076\u6570"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hideMobilePhone4(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const-string p0, "\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e"

    return-object p0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "****"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 743
    :goto_0
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 744
    invoke-virtual {v3, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    .line 751
    invoke-static {v0}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 748
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    .line 751
    invoke-static {v1}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/libs/qrcodecamera/tool/RxFileTool;->closeIO([Ljava/io/Closeable;)V

    .line 752
    throw v0
.end method

.method public static inputStream2Bytes(Ljava/io/InputStream;)[B
    .locals 0

    .line 762
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 816
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 822
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static intsGetSum([I)I
    .locals 4

    .line 268
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 269
    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static isDouble(Ljava/lang/String;)Z
    .locals 1

    .line 124
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    const-string v0, "."

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 83
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 86
    :cond_2
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 89
    :cond_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p0, Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 95
    :cond_5
    instance-of v1, p0, Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 98
    :cond_6
    instance-of v1, p0, Landroid/util/SparseIntArray;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 101
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v1, v2, :cond_9

    .line 102
    instance-of v1, p0, Landroid/util/SparseLongArray;

    if-eqz v1, :cond_8

    check-cast p0, Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_9
    return v3
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 0

    .line 112
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullString(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1

    .line 135
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isDouble(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static lowerFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 376
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static oneCn2ASCII(Ljava/lang/String;)I
    .locals 4

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "GB2312"

    .line 462
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 463
    array-length v2, p0

    if-ne v2, v1, :cond_1

    .line 464
    aget-byte p0, p0, v0

    move v0, p0

    goto :goto_0

    .line 465
    :cond_1
    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 466
    aget-byte v2, p0, v0

    add-int/lit16 v2, v2, 0x100

    .line 467
    aget-byte p0, p0, v1

    add-int/lit16 p0, p0, 0x100

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v2, p0

    const/high16 p0, 0x10000

    sub-int/2addr v2, p0

    move v0, v2

    goto :goto_0

    .line 470
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal resource string"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 473
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static oneCn2PY(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 485
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->oneCn2ASCII(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_1

    int-to-char p0, p0

    .line 491
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 493
    :cond_1
    sget-object v1, Lcom/libs/qrcodecamera/tool/RxDataTool;->pyValue:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 494
    sget-object v2, Lcom/libs/qrcodecamera/tool/RxDataTool;->pyValue:[I

    aget v2, v2, v1

    if-gt v2, p0, :cond_2

    .line 495
    sget-object p0, Lcom/libs/qrcodecamera/tool/RxDataTool;->pyStr:[Ljava/lang/String;

    aget-object v0, p0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static outputStream2Bytes(Ljava/io/OutputStream;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 785
    :cond_0
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static outputStream2String(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 858
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->outputStream2Bytes(Ljava/io/OutputStream;)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 860
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 397
    aget-char v4, p0, v3

    sub-int v5, v0, v3

    sub-int/2addr v5, v1

    .line 398
    aget-char v6, p0, v5

    aput-char v6, p0, v3

    .line 399
    aput-char v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static size2Byte(JLcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 695
    :cond_0
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxDataTool$1;->$SwitchMap$com$libs$qrcodecamera$tool$RxConstTool$MemoryUnit:[I

    invoke-virtual {p2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    mul-long p0, p0, v0

    return-wide p0

    :cond_1
    const-wide/32 v0, 0x40000000

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x100000

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x400

    goto :goto_0
.end method

.method public static string2InputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 835
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 841
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static string2OutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 873
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->bytes2OutputStream([B)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 879
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static stringToDouble(Ljava/lang/String;)D
    .locals 3

    .line 300
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public static stringToFloat(Ljava/lang/String;)F
    .locals 2

    .line 318
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 322
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 2

    .line 230
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 234
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static stringToInts(Ljava/lang/String;)[I
    .locals 4

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 249
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 252
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 253
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static stringToLong(Ljava/lang/String;)J
    .locals 3

    .line 282
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 286
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 411
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 415
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 416
    aget-char v2, p0, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    const/16 v2, 0x20

    .line 417
    aput-char v2, p0, v0

    goto :goto_1

    :cond_1
    const v2, 0xff01

    .line 418
    aget-char v3, p0, v0

    if-gt v2, v3, :cond_2

    aget-char v2, p0, v0

    const v3, 0xff5e

    if-gt v2, v3, :cond_2

    .line 419
    aget-char v2, p0, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v0

    goto :goto_1

    .line 421
    :cond_2
    aget-char v2, p0, v0

    aput-char v2, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toSBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 434
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 437
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 438
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 439
    aget-char v2, p0, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    const/16 v2, 0x3000

    .line 440
    aput-char v2, p0, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x21

    .line 441
    aget-char v3, p0, v0

    if-gt v2, v3, :cond_2

    aget-char v2, p0, v0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_2

    .line 442
    aget-char v2, p0, v0

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v0

    goto :goto_1

    .line 444
    :cond_2
    aget-char v2, p0, v0

    aput-char v2, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static upperFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 363
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public output2InputStream(Ljava/io/OutputStream;)Ljava/io/ByteArrayInputStream;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 990
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
