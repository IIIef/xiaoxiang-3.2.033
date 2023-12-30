.class public Lcom/libs/qrcodecamera/tool/RxQRCode;
.super Ljava/lang/Object;
.source "RxQRCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/CharSequence;)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
    .locals 1

    .line 30
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;

    invoke-direct {v0, p0}, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static creatQRCode(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x320

    .line 110
    invoke-static {p0, v0, v0}, Lcom/libs/qrcodecamera/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    .line 106
    invoke-static {p0, p1, p2, v0, v1}, Lcom/libs/qrcodecamera/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static creatQRCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 77
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 81
    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v3, "utf-8"

    invoke-virtual {v9, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v4, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int v0, p1, p2

    .line 84
    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_2

    .line 89
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 90
    aput p4, v3, v5

    goto :goto_2

    :cond_1
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 92
    aput p3, v3, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p1

    move v8, p1

    move v9, p2

    .line 98
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static createQRCode(Ljava/lang/String;IILandroid/widget/ImageView;)V
    .locals 0

    .line 123
    invoke-static {p0, p1, p2}, Lcom/libs/qrcodecamera/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static createQRCode(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
