.class public Lcom/libs/qrcodecamera/activity/ActivityScanerCode;
.super Landroid/app/Activity;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;,
        Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;,
        Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;,
        Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;
    }
.end annotation


# static fields
.field private static mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;


# instance fields
.field private handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;

.field private mContainer:Landroid/widget/RelativeLayout;

.field public mContext:Landroid/app/Activity;

.field private mCropHeight:I

.field private mCropLayout:Landroid/widget/RelativeLayout;

.field private mCropWidth:I

.field private mFlashing:Z

.field private mIvLight:Landroid/widget/ImageView;

.field private mLlScanHelp:Landroid/widget/LinearLayout;

.field private multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private vibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object p0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropWidth:I

    .line 94
    iput v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropHeight:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->vibrate:Z

    .line 109
    iput-boolean v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mFlashing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->hasSurface:Z

    return p0
.end method

.method static synthetic access$002(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->hasSurface:Z

    return p1
.end method

.method static synthetic access$100(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initCamera(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;[BII)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->decode([BII)V

    return-void
.end method

.method private decode([BII)V
    .locals 8

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 560
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v6, v5, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, p2

    add-int/2addr v7, v5

    .line 563
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    :cond_1
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2, p3, p2}, Lcom/libs/qrcodecamera/module/CameraManager;->buildLuminanceSource([BII)Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 572
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 574
    :try_start_0
    iget-object p3, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    iget-object p3, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 579
    throw p1

    .line 578
    :catch_0
    iget-object p2, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_2

    .line 582
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p3, "ContentValues"

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found barcode ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p3, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    sget v0, Lcom/libs/cameras/R$id;->decode_succeeded:I

    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 585
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "barcode_bitmap"

    .line 586
    invoke-virtual {p1}, Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 587
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 591
    :cond_2
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    sget p2, Lcom/libs/cameras/R$id;->decode_failed:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 593
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 597
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 323
    :try_start_0
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/libs/qrcodecamera/module/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 324
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/module/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p1

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 326
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 327
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int p1, p1, v0

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/2addr p1, v0

    .line 328
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 329
    invoke-virtual {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->setCropWidth(I)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->setCropHeight(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 335
    new-instance p1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    invoke-direct {p1, p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;-><init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V

    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    :catch_0
    :cond_0
    return-void
.end method

.method private initDecode()V
    .locals 6

    .line 157
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 160
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 162
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 163
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 166
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 167
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v3, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 173
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 174
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(I)V

    .line 179
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(I)V

    .line 181
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_0
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private initDialogResult(Lcom/google/zxing/Result;)V
    .locals 2

    .line 391
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 399
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v0}, Lcom/google/zxing/BarcodeFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v0}, Lcom/google/zxing/BarcodeFormat;->equals(Ljava/lang/Object;)Z

    :goto_0
    const-string v0, "\u626b\u63cf\u7ed3\u679c\uff1a"

    .line 411
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    if-eqz p1, :cond_1

    .line 424
    sget v0, Lcom/libs/cameras/R$id;->restart_preview:I

    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private initPermission()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 261
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private initScanerAnimation()V
    .locals 1

    .line 270
    sget v0, Lcom/libs/cameras/R$id;->capture_scan_line:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 271
    invoke-static {v0}, Lcom/libs/qrcodecamera/tool/RxAnimationTool;->ScaleUpDowm(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 250
    sget v0, Lcom/libs/cameras/R$id;->top_mask:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mIvLight:Landroid/widget/ImageView;

    .line 251
    sget v0, Lcom/libs/cameras/R$id;->capture_containter:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContainer:Landroid/widget/RelativeLayout;

    .line 252
    sget v0, Lcom/libs/cameras/R$id;->capture_crop_layout:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropLayout:Landroid/widget/RelativeLayout;

    .line 253
    sget v0, Lcom/libs/cameras/R$id;->ll_scan_help:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mLlScanHelp:Landroid/widget/LinearLayout;

    return-void
.end method

.method private light()V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mFlashing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mFlashing:Z

    .line 312
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/CameraManager;->openLight()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mFlashing:Z

    .line 316
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/CameraManager;->offLight()V

    :goto_0
    return-void
.end method

.method public static setScanerListener(Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;)V
    .locals 0

    .line 130
    sput-object p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;

    return-void
.end method


# virtual methods
.method public btnScanOnClick(Landroid/view/View;)V
    .locals 1

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 295
    sget v0, Lcom/libs/cameras/R$id;->top_mask:I

    if-ne p1, v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->light()V

    goto :goto_0

    .line 298
    :cond_0
    sget v0, Lcom/libs/cameras/R$id;->top_back:I

    if-ne p1, v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->finish()V

    goto :goto_0

    .line 301
    :cond_1
    sget v0, Lcom/libs/cameras/R$id;->top_openpicture:I

    if-ne p1, v0, :cond_2

    .line 303
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxPhotoTool;->openLocalImage(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCropHeight()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropHeight:I

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropWidth:I

    return v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->inactivityTimer:Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;->onActivity()V

    .line 444
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->vibrate:Z

    invoke-static {v0, v1}, Lcom/libs/qrcodecamera/tool/RxBeepTool;->playBeep(Landroid/app/Activity;Z)V

    .line 446
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e8c\u7ef4\u7801/\u6761\u5f62\u7801 \u626b\u63cf\u7ed3\u679c:"

    .line 447
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    invoke-direct {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V

    goto :goto_0

    :cond_0
    const-string v0, "From to Camera"

    .line 454
    invoke-interface {v1, v0, p1}, Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;->onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V

    .line 455
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->finish()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 351
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 355
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 358
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 361
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxQrBarTool;->decodeFromPhoto(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "From to Picture"

    if-eqz p1, :cond_1

    .line 363
    :try_start_1
    sget-object p3, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;

    if-nez p3, :cond_0

    .line 365
    invoke-direct {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initDialogResult(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-interface {p3, p2, p1}, Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;->onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V

    .line 368
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->finish()V

    goto :goto_0

    .line 371
    :cond_1
    sget-object p1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;

    if-nez p1, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/libs/cameras/R$string;->pic_fail:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 375
    :cond_2
    sget p3, Lcom/libs/cameras/R$string;->pic_fail:I

    invoke-virtual {p0, p3}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget p1, Lcom/libs/cameras/R$layout;->activity_scaner_code:I

    invoke-virtual {p0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initDecode()V

    .line 141
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initView()V

    .line 143
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initPermission()V

    .line 145
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initScanerAnimation()V

    .line 147
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/libs/qrcodecamera/module/CameraManager;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->hasSurface:Z

    .line 149
    new-instance p1, Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;

    invoke-direct {p1, p0}, Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->inactivityTimer:Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->inactivityTimer:Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/decoding/InactivityTimer;->shutdown()V

    const/4 v0, 0x0

    .line 242
    sput-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mScanerListener:Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;

    .line 243
    iget-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->quitSynchronously()V

    .line 233
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    iput-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handler:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;

    .line 236
    :cond_0
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/CameraManager;->closeDriver()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    sget v0, Lcom/libs/cameras/R$id;->capture_preview:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 199
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 200
    iget-boolean v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;

    invoke-direct {v1, p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$1;-><init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 224
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    return-void
.end method

.method public setCropHeight(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropHeight:I

    .line 290
    sput p1, Lcom/libs/qrcodecamera/module/CameraManager;->FRAME_HEIGHT:I

    return-void
.end method

.method public setCropWidth(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->mCropWidth:I

    .line 280
    sput p1, Lcom/libs/qrcodecamera/module/CameraManager;->FRAME_WIDTH:I

    return-void
.end method
