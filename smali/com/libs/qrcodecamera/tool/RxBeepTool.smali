.class public Lcom/libs/qrcodecamera/tool/RxBeepTool;
.super Ljava/lang/Object;
.source "RxBeepTool.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.5f

.field private static final VIBRATE_DURATION:I = 0x1f4

.field private static mediaPlayer:Landroid/media/MediaPlayer; = null

.field private static playBeep:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playBeep(Landroid/app/Activity;Z)V
    .locals 7

    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->playBeep:Z

    const-string v0, "audio"

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 31
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->playBeep:Z

    .line 34
    :cond_0
    sget-boolean v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->playBeep:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 38
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 40
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/libs/qrcodecamera/tool/RxBeepTool$1;

    invoke-direct {v1}, Lcom/libs/qrcodecamera/tool/RxBeepTool$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/libs/cameras/R$raw;->weixin_beep:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 52
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 53
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/libs/qrcodecamera/tool/RxBeepTool;->mediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x1f4

    .line 59
    invoke-static {p0, p1}, Lcom/libs/qrcodecamera/tool/RxVibrateTool;->vibrateOnce(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
