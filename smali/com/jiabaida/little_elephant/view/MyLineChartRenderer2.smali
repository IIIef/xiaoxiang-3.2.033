.class public Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "MyLineChartRenderer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;
    }
.end annotation


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field private mCirclesBuffer:[F

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mGenerateFilledPathBuffer:Landroid/graphics/Path;

.field private mImageCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;",
            "Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private mLineBuffer:[F

.field private noDrawLineValue:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 64
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 66
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    .line 67
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 68
    iput p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 309
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    .line 471
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mGenerateFilledPathBuffer:Landroid/graphics/Path;

    .line 652
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mImageCaches:Ljava/util/HashMap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 657
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    .line 86
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 88
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 89
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;)Landroid/graphics/Paint;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;)Landroid/graphics/Paint;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;)Landroid/graphics/Paint;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILandroid/graphics/Path;)V
    .locals 7

    .line 531
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 533
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 536
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 538
    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {p4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 541
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v1

    invoke-virtual {p4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v5, 0x0

    add-int/2addr p2, v4

    :goto_1
    if-gt p2, p3, :cond_2

    .line 548
    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    mul-float v3, v3, v1

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 554
    :cond_1
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0x1

    move-object v3, v5

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 561
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 564
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 661
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 663
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 665
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    .line 666
    aput v4, v2, v5

    .line 668
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    .line 670
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 672
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 674
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 675
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 678
    :cond_0
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 682
    iget-object v9, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v9, v10, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 684
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v9

    .line 685
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleRadius()F

    move-result v10

    .line 686
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-float v11, v10, v9

    if-gez v11, :cond_1

    cmpl-float v10, v10, v4

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    .line 690
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    move-result v11

    const v12, 0x112233

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 694
    :goto_2
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 695
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;

    goto :goto_3

    .line 697
    :cond_3
    new-instance v12, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;

    invoke-direct {v12, v0, v13}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;-><init>(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$1;)V

    .line 698
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v14, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :goto_3
    invoke-virtual {v12, v7}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;->init(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 705
    invoke-virtual {v12, v7, v10, v11}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;->fill(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;ZZ)V

    .line 708
    :cond_4
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v10, v11

    .line 710
    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_4
    if-gt v11, v10, :cond_9

    .line 712
    invoke-interface {v7, v11}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_7

    .line 716
    :cond_5
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v15, v3

    .line 717
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    mul-float v14, v14, v1

    aput v14, v15, v5

    .line 719
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 721
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_7

    .line 724
    :cond_6
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    aget v15, v15, v5

    .line 725
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    .line 728
    :cond_7
    invoke-virtual {v12, v11}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$DataSetImageCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 731
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mCirclesBuffer:[F

    aget v16, v15, v3

    sub-float v3, v16, v9

    aget v15, v15, v5

    sub-float/2addr v15, v9

    move-object/from16 v4, p1

    invoke-virtual {v4, v14, v3, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v4, p1

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_7
    move-object/from16 v4, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected drawCubicBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 212
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v0

    .line 214
    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 216
    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v2, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v1, v2, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 218
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCubicIntensity()F

    move-result v1

    .line 220
    iget-object v2, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 222
    iget-object v2, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 234
    iget-object v2, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, v3

    .line 235
    iget-object v4, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget-object v4, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/lit8 v4, v2, -0x2

    const/4 v5, 0x0

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v7, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    sub-int/2addr v2, v3

    .line 239
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v7, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    const/4 v5, -0x1

    if-nez v2, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v9, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v11

    mul-float v11, v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 248
    iget-object v9, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v9, v9, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v9, v3

    move-object v3, v2

    :goto_0
    iget-object v10, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v11, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v10, v11

    if-gt v9, v10, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    .line 252
    :cond_1
    invoke-interface {v7, v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    :goto_1
    add-int/lit8 v5, v9, 0x1

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v9, v5

    .line 255
    :cond_2
    invoke-interface {v7, v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 257
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v11

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v1

    .line 258
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v12

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    sub-float/2addr v12, v4

    mul-float v12, v12, v1

    .line 259
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v13

    sub-float/2addr v4, v13

    mul-float v4, v4, v1

    .line 260
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    sub-float/2addr v13, v14

    mul-float v13, v13, v1

    .line 262
    iget-object v14, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    add-float/2addr v15, v11

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v11

    add-float/2addr v11, v12

    mul-float v16, v11, v0

    .line 263
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v11

    sub-float v17, v11, v4

    .line 264
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    sub-float/2addr v4, v13

    mul-float v18, v4, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v19

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    mul-float v20, v4, v0

    .line 262
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v10

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    goto :goto_0

    .line 269
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 272
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 274
    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v3, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    iget-object v5, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 277
    :cond_4
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 283
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    iget-object v2, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 285
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V
    .locals 3

    .line 290
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 291
    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/formatter/IFillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v0

    .line 293
    iget v1, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget v2, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    iget p5, p5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-interface {p2, p5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p5

    invoke-virtual {p5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p5

    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 295
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 297
    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 299
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 302
    invoke-virtual {p0, p1, p3, p4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result p4

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :goto_0
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    float-to-int v0, v0

    .line 101
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v1

    float-to-int v1, v1

    .line 103
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_2

    :cond_1
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 110
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 112
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    :cond_2
    const/4 v0, 0x0

    .line 117
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 119
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 123
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {p0, p1, v1}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 2

    .line 132
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 138
    sget-object v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2$1;->$SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode:[I

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawHorizontalBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawCubicBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    .line 646
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawCircles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9

    .line 740
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 742
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 744
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    if-eqz v4, :cond_2

    .line 746
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isHighlightEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 749
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 751
    invoke-virtual {p0, v5, v4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 754
    :cond_1
    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v5

    iget-object v8, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 755
    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v8

    mul-float v5, v5, v8

    .line 754
    invoke-virtual {v6, v7, v5}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v5

    .line 757
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v6, v6

    iget-wide v7, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 760
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v6

    iget-wide v5, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawHighlightLines(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected drawHorizontalBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 14

    .line 159
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v2, v3, p1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 165
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 167
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 169
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-interface {p1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 173
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v4, v3

    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v3, v3, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v5, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v5, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v3, v5

    if-gt v4, v3, :cond_0

    .line 178
    invoke-interface {p1, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    .line 181
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v10, v5, v6

    .line 183
    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    .line 184
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v9, v2, v0

    .line 185
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v11, v2, v0

    .line 186
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v12

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v13, v2, v0

    move v8, v10

    .line 183
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v4, v4, 0x1

    move-object v2, v3

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 194
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 196
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicFillPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object v3, p0

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 205
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->cubicPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 319
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v2

    .line 321
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    const/4 v7, 0x2

    if-eqz v3, :cond_1

    const/4 v8, 0x4

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    .line 324
    :goto_1
    iget-object v9, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    .line 326
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 328
    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDashedLineEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 334
    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    goto :goto_2

    :cond_2
    move-object/from16 v11, p1

    .line 339
    :goto_2
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v12, v13, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 342
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    if-lez v2, :cond_3

    .line 343
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v1, v9, v12}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 347
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColors()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v6, :cond_e

    .line 349
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    array-length v2, v2

    mul-int/lit8 v12, v8, 0x2

    if-gt v2, v12, :cond_4

    mul-int/lit8 v8, v8, 0x4

    .line 350
    new-array v2, v8, [F

    iput-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    .line 352
    :cond_4
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_3
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v8, v8, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v13, v13, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v8, v13

    if-gt v2, v8, :cond_17

    .line 354
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_5

    .line 358
    :cond_5
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    iget v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    goto/16 :goto_5

    .line 359
    :cond_6
    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v14

    aput v14, v13, v5

    .line 360
    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v13, v6

    .line 362
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v8, v8, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    const/4 v13, 0x3

    if-ge v2, v8, :cond_a

    add-int/lit8 v8, v2, 0x1

    .line 364
    invoke-interface {v1, v8}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_9

    .line 367
    :cond_7
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 369
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v14, v7

    .line 370
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v15, v14, v6

    aput v15, v14, v13

    .line 371
    aget v15, v14, v7

    aput v15, v14, v4

    const/4 v15, 0x5

    .line 372
    aget v16, v14, v13

    aput v16, v14, v15

    const/4 v15, 0x6

    .line 373
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v14, v15

    .line 374
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    const/4 v15, 0x7

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v14, v15

    goto :goto_4

    .line 376
    :cond_9
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v14, v7

    .line 377
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v8

    mul-float v8, v8, v10

    aput v8, v14, v13

    goto :goto_4

    .line 381
    :cond_a
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v14, v8, v5

    aput v14, v8, v7

    .line 382
    aget v14, v8, v6

    aput v14, v8, v13

    .line 385
    :goto_4
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v9, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 387
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v14, v14, v5

    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_9

    .line 392
    :cond_b
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v14, v14, v7

    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v14, v14, v6

    .line 393
    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    aget v13, v14, v13

    .line 394
    invoke-virtual {v8, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_5

    .line 398
    :cond_c
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v8, v5, v12, v13}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 405
    :cond_e
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    array-length v12, v12

    mul-int v2, v2, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-ge v12, v13, :cond_f

    .line 406
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    .line 410
    :cond_f
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 415
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    const/4 v4, 0x0

    :goto_6
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v12, v12, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v13, v13, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v12, v13

    if-gt v2, v12, :cond_16

    if-nez v2, :cond_10

    const/4 v12, 0x0

    goto :goto_7

    :cond_10
    add-int/lit8 v12, v2, -0x1

    .line 417
    :goto_7
    invoke-interface {v1, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 418
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    if-nez v12, :cond_11

    goto/16 :goto_8

    .line 423
    :cond_11
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_12

    goto :goto_8

    :cond_12
    if-nez v13, :cond_13

    goto :goto_8

    .line 431
    :cond_13
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_14

    goto :goto_8

    .line 442
    :cond_14
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v14, v4

    .line 443
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v16

    mul-float v16, v16, v10

    aput v16, v4, v15

    if-eqz v3, :cond_15

    .line 446
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v4, v14

    .line 447
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v16

    mul-float v16, v16, v10

    aput v16, v4, v15

    .line 448
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v4, v14

    .line 449
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v12

    mul-float v12, v12, v10

    aput v12, v4, v15

    .line 452
    :cond_15
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v12, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v4, v14

    .line 453
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    mul-float v13, v13, v10

    aput v13, v4, v12

    move v4, v14

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_16
    if-lez v4, :cond_17

    .line 457
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 459
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v2, v6

    mul-int v2, v2, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 461
    iget-object v3, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mLineBuffer:[F

    iget-object v3, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 468
    :cond_17
    :goto_9
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V
    .locals 7

    .line 483
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mGenerateFilledPathBuffer:Landroid/graphics/Path;

    .line 485
    iget v1, p4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .line 486
    iget v2, p4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget p4, p4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, p4

    const/4 p4, 0x0

    :cond_0
    mul-int/lit16 v3, p4, 0x80

    add-int/2addr v3, v1

    add-int/lit16 v4, v3, 0x80

    if-le v4, v2, :cond_1

    move v4, v2

    :cond_1
    if-gt v3, v4, :cond_3

    .line 500
    invoke-direct {p0, p2, v3, v4, v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILandroid/graphics/Path;)V

    .line 502
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 504
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 507
    invoke-virtual {p0, p1, v0, v5}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result v5

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :cond_3
    :goto_0
    add-int/lit8 p4, p4, 0x1

    if-le v3, v4, :cond_0

    return-void
.end method

.method public drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object p5, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v6, p0

    .line 570
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 572
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 574
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    .line 576
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 578
    invoke-virtual {v6, v5}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_6

    .line 582
    :cond_0
    invoke-virtual {v6, v5}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 584
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    .line 587
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 589
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    div-int/lit8 v0, v0, 0x2

    :cond_1
    move v4, v0

    .line 592
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v0, v1, v5}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 594
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v12

    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 595
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v14, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v15, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    move-object v11, v5

    .line 594
    invoke-virtual/range {v10 .. v15}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;FFII)[F

    move-result-object v10

    .line 596
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v11

    .line 598
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v12

    .line 599
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 600
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v13, 0x0

    .line 602
    :goto_1
    array-length v0, v10

    if-ge v13, v0, :cond_7

    .line 604
    aget v14, v10, v13

    add-int/lit8 v0, v13, 0x1

    .line 605
    aget v15, v10, v0

    .line 607
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 610
    :cond_2
    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 613
    :cond_3
    div-int/lit8 v0, v13, 0x2

    iget-object v1, v6, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v1, v0

    invoke-interface {v5, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 615
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getPointLabel(Lcom/github/mikephil/charting/data/Entry;)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v4

    sub-float v16, v15, v1

    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueTextColor(I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v3

    move v3, v14

    move/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_4
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v16, v5

    .line 619
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 621
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 623
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v14, v0

    float-to-int v0, v14

    iget v1, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v15, v1

    float-to-int v1, v15

    .line 628
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 629
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    move-object/from16 v20, p1

    move/from16 v22, v0

    move/from16 v23, v1

    .line 623
    invoke-static/range {v20 .. v25}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v19, v4

    move-object/from16 v16, v5

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x2

    move-object/from16 v5, v16

    move/from16 v4, v19

    goto/16 :goto_1

    .line 633
    :cond_7
    :goto_5
    invoke-static {v12}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getNoDrawLineValue()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    return v0
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 791
    iput-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 799
    iput-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 773
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->releaseBitmap()V

    return-void
.end method

.method public setNoDrawLineValue(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->noDrawLineValue:F

    return-void
.end method
