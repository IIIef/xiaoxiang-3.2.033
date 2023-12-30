.class public Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
.super Ljava/lang/Object;
.source "RxQRCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/tool/RxQRCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:I

.field private codeColor:I

.field private codeSide:I

.field private content:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->backgroundColor:I

    const/high16 v0, -0x1000000

    .line 37
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeColor:I

    const/16 v0, 0x320

    .line 39
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeSide:I

    .line 59
    iput-object p1, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->content:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backColor(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
    .locals 0

    .line 44
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->backgroundColor:I

    return-object p0
.end method

.method public codeColor(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
    .locals 0

    .line 49
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeColor:I

    return-object p0
.end method

.method public codeSide(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;
    .locals 0

    .line 54
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeSide:I

    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->content:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeSide:I

    iget v2, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->backgroundColor:I

    iget v3, p0, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeColor:I

    invoke-static {v0, v1, v1, v2, v3}, Lcom/libs/qrcodecamera/tool/RxQRCode;->creatQRCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method
