.class public Lcom/jiabaida/little_elephant/view/MyLineChart;
.super Lcom/github/mikephil/charting/charts/LineChart;
.source "MyLineChart.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    return-object v0
.end method

.method public getNoDrawLineValue()F
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->getNoDrawLineValue()F

    move-result v0

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->getNoDrawLineValue()F

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 3

    .line 24
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/LineChart;->init()V

    .line 26
    new-instance v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->releaseBitmap()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->releaseBitmap()V

    .line 64
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/LineChart;->onDetachedFromWindow()V

    return-void
.end method

.method public setNoDrawLineValue(F)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->setNoDrawLineValue(F)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer2;->setNoDrawLineValue(F)V

    :cond_1
    :goto_0
    return-void
.end method
