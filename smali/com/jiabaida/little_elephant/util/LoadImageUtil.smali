.class public Lcom/jiabaida/little_elephant/util/LoadImageUtil;
.super Ljava/lang/Object;
.source "LoadImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.util.LoadImageUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SaveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 56
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x2

    return p0
.end method

.method public static autoRotateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 438
    :cond_0
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->getImageOrientation(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10e

    .line 450
    invoke-static {p1, p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 p0, 0x5a

    .line 444
    invoke-static {p1, p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 p0, 0xb4

    .line 447
    invoke-static {p1, p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getImageOrientation(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    .line 467
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 468
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static getLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;)V
    .locals 11

    const-string v0, "_data"

    const-string v1, "latitude"

    const-string v2, "longitude"

    const-string v3, "datetaken"

    const-string v4, "date_modified"

    .line 516
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 519
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v9, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v9, p0

    const-string v8, "_data=?"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 525
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 526
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 528
    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_strLatitude:Ljava/lang/String;

    .line 529
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_strLongitude:Ljava/lang/String;

    .line 530
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_dateTaken:J

    .line 531
    iget-wide v5, p2, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_dateTaken:J

    const-wide/16 v7, 0xa

    cmp-long p1, v5, v7

    if-gez p1, :cond_1

    .line 533
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_dateTaken:J

    .line 536
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 538
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_2

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 331
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->loadImageFromSDFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 335
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->loadImageFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadImageForScale(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 209
    new-instance v0, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;-><init>()V

    .line 210
    invoke-static {p0, p2, p3, p1, v0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->loadImageForScaleAndMoreInfo(Landroid/content/Context;IILjava/lang/String;Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadImageForScaleAndMoreInfo(Landroid/content/Context;IILjava/lang/String;Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, ""

    if-eq v2, v4, :cond_7

    move-object/from16 v4, p0

    .line 231
    invoke-static {v4, v2, v3}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->getLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;)V

    .line 233
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 234
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 239
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcWidth:I

    .line 240
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcHeight:I

    .line 241
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 242
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    if-gt v6, v5, :cond_0

    if-le v8, v5, :cond_2

    :cond_0
    if-le v6, v8, :cond_1

    goto :goto_0

    :cond_1
    move v6, v8

    .line 245
    :goto_0
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v5, 0x0

    .line 248
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 255
    invoke-static/range {p3 .. p3}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->getImageOrientation(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    const/16 v2, 0x5a

    .line 259
    invoke-static {v4, v2}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 260
    iget v5, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcWidth:I

    .line 261
    iget v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcHeight:I

    iput v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcWidth:I

    .line 262
    iput v5, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcHeight:I

    .line 263
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    const/16 v2, 0xb4

    .line 268
    invoke-static {v4, v2}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_4
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    const/16 v2, 0x10e

    .line 274
    invoke-static {v4, v2}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 275
    iget v5, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcWidth:I

    .line 276
    iget v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcHeight:I

    iput v6, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcWidth:I

    .line 277
    iput v5, v3, Lcom/jiabaida/little_elephant/util/LoadImageUtil$BitmapInfo;->m_nImgSrcHeight:I

    .line 278
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 283
    :cond_5
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v9, v2

    .line 284
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    .line 285
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 286
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, v0, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 290
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 291
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 304
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    invoke-virtual {v15, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 307
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x0

    move-object v10, v4

    .line 306
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v0

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    return-object v4
.end method

.method public static loadImageForThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 75
    :try_start_0
    sget-object v4, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strFilePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nDesWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nDesHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 77
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    .line 80
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_0

    .line 82
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiabaida/little_elephant/app/XXApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 87
    invoke-static {v7, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    :goto_0
    sget-object v7, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " nSrcWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " nSrcHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    int-to-float v9, v2

    div-float/2addr v7, v9

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 92
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v10, v12

    if-eqz p3, :cond_2

    if-le v7, v5, :cond_5

    if-le v10, v5, :cond_5

    if-le v7, v10, :cond_1

    move v7, v10

    .line 97
    :cond_1
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_2
    if-gt v7, v5, :cond_3

    if-le v10, v5, :cond_5

    :cond_3
    if-le v7, v10, :cond_4

    goto :goto_1

    :cond_4
    move v7, v10

    .line 103
    :goto_1
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    :cond_5
    :goto_2
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6

    .line 112
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 116
    :cond_6
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiabaida/little_elephant/app/XXApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 117
    invoke-static {v6, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_7

    return-object v3

    .line 126
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 127
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 128
    sget-object v8, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nImgWidth:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " nImgHeight:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    div-float v8, v11, v9

    int-to-float v10, v6

    int-to-float v12, v7

    div-float/2addr v10, v12

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    mul-int v1, v6, v2

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v1, v1

    move v15, v6

    goto :goto_4

    :cond_8
    mul-int v1, v1, v7

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    move v15, v1

    move v1, v7

    .line 141
    :goto_4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v8, v15

    div-float/2addr v11, v8

    int-to-float v8, v1

    div-float/2addr v9, v8

    .line 144
    invoke-virtual {v2, v11, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 145
    invoke-static {v0, v2}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->setMatrixRotation(Ljava/lang/String;Landroid/graphics/Matrix;)V

    sub-int/2addr v6, v15

    .line 146
    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v7, v1

    div-int/lit8 v14, v7, 0x2

    const/16 v18, 0x1

    move-object v12, v4

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_9
    int-to-double v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v12, v8, v10

    int-to-double v14, v7

    div-double v16, v12, v14

    move-object/from16 v19, v4

    int-to-double v3, v1

    mul-double v20, v3, v10

    move/from16 v18, v6

    int-to-double v5, v2

    div-double v20, v20, v5

    cmpl-double v22, v16, v20

    if-lez v22, :cond_a

    mul-double v14, v14, v10

    mul-double v3, v3, v14

    div-double/2addr v3, v8

    double-to-int v2, v3

    goto :goto_5

    :cond_a
    mul-double v5, v5, v12

    div-double/2addr v5, v14

    double-to-int v1, v5

    :goto_5
    int-to-float v1, v1

    move/from16 v3, v18

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_b

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_b

    return-object v19

    .line 175
    :cond_b
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 178
    invoke-static {v0, v3}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->setMatrixRotation(Ljava/lang/String;Landroid/graphics/Matrix;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 181
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v12, v19

    move-object/from16 v17, v3

    .line 180
    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "CommonUtility"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizedBitmap width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resizedBitmap height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v1, v2}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 194
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static loadImageFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 410
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 411
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    .line 412
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 415
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 416
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadImageFromSDFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 390
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 391
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 392
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->autoRotateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static loadImageFromSDFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 347
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 348
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 350
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u7247\u539f\u5bbd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u56fe\u7247\u539f\u9ad8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadImageFromSDFile"

    invoke-static {v3, v2}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge p1, v2, :cond_0

    .line 357
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 359
    :goto_0
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p2, p1, :cond_1

    .line 361
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, p1, p2

    .line 363
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nWidthSampleSize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nHeightSampleSize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "inSampleSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 368
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 371
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 375
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/LoadImageUtil;->autoRotateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 485
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 486
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 487
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static setMatrixRotation(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 2

    .line 493
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 494
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 500
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x43340000    # 180.0f

    .line 502
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x43870000    # 270.0f

    .line 504
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_2
    :goto_1
    return-void
.end method
