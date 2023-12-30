.class public Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
.super Ljava/lang/Object;
.source "RxBarCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/tool/RxBarCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:I

.field private codeColor:I

.field private codeHeight:I

.field private codeWidth:I

.field private content:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->backgroundColor:I

    const/high16 v0, -0x1000000

    .line 35
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeColor:I

    const/16 v0, 0x3e8

    .line 37
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeWidth:I

    const/16 v0, 0x12c

    .line 39
    iput v0, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeHeight:I

    .line 64
    iput-object p1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->content:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backColor(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    .locals 0

    .line 44
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->backgroundColor:I

    return-object p0
.end method

.method public codeColor(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    .locals 0

    .line 49
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeColor:I

    return-object p0
.end method

.method public codeHeight(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    .locals 0

    .line 59
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeHeight:I

    return-object p0
.end method

.method public codeWidth(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;
    .locals 0

    .line 54
    iput p1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeWidth:I

    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->content:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeWidth:I

    iget v2, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeHeight:I

    iget v3, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->backgroundColor:I

    iget v4, p0, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeColor:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/libs/qrcodecamera/tool/RxBarCode;->createBarCode(Ljava/lang/CharSequence;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method
