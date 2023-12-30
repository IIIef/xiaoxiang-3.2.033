.class public Lcom/libs/qrcodecamera/tool/RxBarCode;
.super Ljava/lang/Object;
.source "RxBarCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/CharSequence;)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    .locals 1

    .line 28
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    invoke-direct {v0, p0}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;
    .locals 8

    .line 82
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 86
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 95
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int p1, v6, v7

    .line 96
    new-array v1, p1, [I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v7, :cond_2

    mul-int v0, p2, v6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_1

    add-int v3, v0, v2

    .line 101
    invoke-virtual {p0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, p4

    goto :goto_3

    :cond_0
    move v4, p3

    :goto_3
    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 104
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    .line 105
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public static createBarCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x3e8

    const/16 v1, 0x12c

    .line 132
    invoke-static {p0, v0, v1}, Lcom/libs/qrcodecamera/tool/RxBarCode;->createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    .line 120
    invoke-static {p0, p1, p2, v0, v1}, Lcom/libs/qrcodecamera/tool/RxBarCode;->createBarCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBarCode(Ljava/lang/String;IILandroid/widget/ImageView;)V
    .locals 0

    .line 136
    invoke-static {p0, p1, p2}, Lcom/libs/qrcodecamera/tool/RxBarCode;->createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static createBarCode(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 140
    invoke-static {p0}, Lcom/libs/qrcodecamera/tool/RxBarCode;->createBarCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
