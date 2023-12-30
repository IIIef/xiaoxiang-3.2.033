.class public Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;
.super Ljava/lang/Object;
.source "LoadImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/util/LoadImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public m_bitmap:Landroid/graphics/Bitmap;

.field public m_dateTaken:J

.field public m_nImgSrcHeight:I

.field public m_nImgSrcWidth:I

.field public m_strLatitude:Ljava/lang/String;

.field public m_strLongitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
