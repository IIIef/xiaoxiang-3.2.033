.class public final Lcom/libs/qrcodecamera/module/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static FRAME_HEIGHT:I = -0x1

.field public static FRAME_MARGINTOP:I = -0x1

.field public static FRAME_WIDTH:I = -0x1

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static cameraManager:Lcom/libs/qrcodecamera/module/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private parameter:Landroid/hardware/Camera$Parameters;

.field private final previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 55
    :goto_0
    sput v0, Lcom/libs/qrcodecamera/module/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    .line 87
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->useOneShotPreviewCallback:Z

    .line 89
    new-instance v1, Lcom/libs/qrcodecamera/module/PreviewCallback;

    invoke-direct {v1, v0, p1}, Lcom/libs/qrcodecamera/module/PreviewCallback;-><init>(Lcom/libs/qrcodecamera/module/CameraConfigurationManager;Z)V

    iput-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    .line 90
    new-instance p1, Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    invoke-direct {p1}, Lcom/libs/qrcodecamera/module/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    return-void
.end method

.method public static get()Lcom/libs/qrcodecamera/module/CameraManager;
    .locals 1

    .line 110
    sget-object v0, Lcom/libs/qrcodecamera/module/CameraManager;->cameraManager:Lcom/libs/qrcodecamera/module/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/libs/qrcodecamera/module/CameraManager;->cameraManager:Lcom/libs/qrcodecamera/module/CameraManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/libs/qrcodecamera/module/CameraManager;

    invoke-direct {v0, p0}, Lcom/libs/qrcodecamera/module/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/libs/qrcodecamera/module/CameraManager;->cameraManager:Lcom/libs/qrcodecamera/module/CameraManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;
    .locals 12

    .line 285
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/module/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getPreviewFormat()I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string v3, "yuv420p"

    .line 300
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    new-instance v1, Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v1

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_1
    new-instance v8, Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 296
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/libs/qrcodecamera/module/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public closeDriver()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/libs/qrcodecamera/module/FlashlightManager;->disableFlashlight()V

    .line 144
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getAutoFocusCallback()Lcom/libs/qrcodecamera/module/AutoFocusCallback;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    return-object v0

    .line 238
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    .line 239
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 243
    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    .line 245
    :cond_1
    sput v2, Lcom/libs/qrcodecamera/module/CameraManager;->FRAME_HEIGHT:I

    .line 246
    iget v3, v1, Landroid/graphics/Point;->x:I

    sget v4, Lcom/libs/qrcodecamera/module/CameraManager;->FRAME_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 247
    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x50

    .line 248
    new-instance v5, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/libs/qrcodecamera/module/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/libs/qrcodecamera/module/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 263
    iget-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 266
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 267
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 268
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 269
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 270
    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewCallback()Lcom/libs/qrcodecamera/module/PreviewCallback;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    return-object v0
.end method

.method public isPreviewing()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    return v0
.end method

.method public isUseOneShotPreviewCallback()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->useOneShotPreviewCallback:Z

    return v0
.end method

.method public offLight()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    .line 352
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 128
    iget-boolean p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->initialized:Z

    .line 130
    iget-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->configManager:Lcom/libs/qrcodecamera/module/CameraConfigurationManager;

    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/module/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 133
    invoke-static {}, Lcom/libs/qrcodecamera/module/FlashlightManager;->enableFlashlight()V

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public openLight()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    .line 344
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/libs/qrcodecamera/module/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 205
    iget-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/libs/qrcodecamera/module/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 187
    iget-boolean p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    if-eqz v1, :cond_1

    .line 166
    iget-boolean v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewCallback:Lcom/libs/qrcodecamera/module/PreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/libs/qrcodecamera/module/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 171
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/CameraManager;->autoFocusCallback:Lcom/libs/qrcodecamera/module/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/libs/qrcodecamera/module/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 172
    iput-boolean v1, p0, Lcom/libs/qrcodecamera/module/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method
