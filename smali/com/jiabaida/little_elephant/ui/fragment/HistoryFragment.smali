.class public Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.fragment.HistoryFragment"


# instance fields
.field private allBmsHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private chartAverageTimeNum:I

.field private final chartIntervalTime:I

.field private final chartMillis:I

.field private final chartTotalMillis:I

.field private flTopBack:Landroid/widget/FrameLayout;

.field private initChartDataValue:F

.field private lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

.field private lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

.field private lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

.field private lineHaveActualData:Z

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private maxCapacity:F

.field private maxElectricity:F

.field private maxTemperatures:F

.field private maxVoltage:F

.field private minCapacity:F

.field private minElectricity:F

.field private minTemperatures:F

.field private minVoltage:F

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;-><init>()V

    const v0, -0x41a7d567    # -0.2111f

    .line 68
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initChartDataValue:F

    .line 155
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->timeHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->maxElectricity:F

    .line 168
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minElectricity:F

    .line 169
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->maxTemperatures:F

    .line 170
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minTemperatures:F

    .line 171
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->maxVoltage:F

    .line 172
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minVoltage:F

    .line 173
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->maxCapacity:F

    .line 174
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minCapacity:F

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineHaveActualData:Z

    const/16 v1, 0x64

    .line 178
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->chartTotalMillis:I

    .line 180
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->chartIntervalTime:I

    const v0, 0xea60

    .line 182
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->chartMillis:I

    .line 184
    iput v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->chartAverageTimeNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->clearChartData()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)Lcom/jiabaida/little_elephant/view/MyLineChart;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getDBChartData()V

    return-void
.end method

.method private clearChartData()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->clearValues()V

    .line 189
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 190
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->notifyDataSetChanged()V

    .line 191
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->invalidate()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->clearValues()V

    .line 195
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 196
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->notifyDataSetChanged()V

    .line 197
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->invalidate()V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->clearValues()V

    .line 201
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 202
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->invalidate()V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getDBChartData()V
    .locals 10

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 219
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->clearChartData()V

    .line 220
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 227
    iput-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineHaveActualData:Z

    .line 229
    sget-object v3, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate_HHMM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/32 v3, 0x5b8d80

    sub-long/2addr v0, v3

    .line 233
    sget-object v3, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate_HHMM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v3}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 235
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    move-result-object v4

    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "BluetoothMac"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->searchByWhereTime(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getAvgVoltage()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void

    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineHaveActualData:Z

    .line 222
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void
.end method

.method private initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v1, -0x100

    .line 748
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 750
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineHaveActualData:Z

    const v2, 0x3c23d70a    # 0.01f

    if-eqz v1, :cond_0

    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    :goto_0
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 752
    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 754
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    const/16 v1, 0x41

    .line 755
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 756
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    const/4 v1, 0x1

    .line 759
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/high16 v1, -0x1000000

    .line 761
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    .line 762
    invoke-virtual {p1, v1, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->enableDashedHighlightLine(FFF)V

    .line 763
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineHaveActualData:Z

    if-eqz v1, :cond_1

    const v2, 0x3f4ccccd    # 0.8f

    :cond_1
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightLineWidth(F)V

    new-array v0, v0, [I

    .line 766
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors([I)V

    return-void
.end method

.method private initLineChartParams(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 602
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 605
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    const/4 v1, 0x1

    .line 607
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 609
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawBorders(Z)V

    .line 612
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    const v2, 0x3f666666    # 0.9f

    .line 614
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 616
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 617
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 621
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 626
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    .line 628
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 630
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    const/high16 v3, -0x1000000

    .line 631
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    .line 633
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 635
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 636
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 637
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 643
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 645
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x41100000    # 9.0f

    .line 648
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 649
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 650
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 651
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v4, 0x5

    .line 653
    invoke-virtual {v2, v4, v0}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 655
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getLabelCount()I

    move-result v5

    if-le v5, v4, :cond_0

    const/high16 v4, 0x42340000    # 45.0f

    .line 656
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelRotationAngle(F)V

    :cond_0
    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    .line 659
    invoke-virtual {v2, v5, v5, v4}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 660
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAvoidFirstLastClipping(Z)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 661
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 663
    new-instance v4, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;

    invoke-direct {v4, p0, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 675
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    const/high16 v2, 0x41400000    # 12.0f

    .line 678
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 679
    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 685
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 686
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 687
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    const v1, 0x3dcccccd    # 0.1f

    .line 688
    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 689
    new-instance v4, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$7;

    invoke-direct {v4, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$7;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {p2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 709
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 711
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 712
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 714
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 716
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 717
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 718
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 719
    new-instance p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$8;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$8;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    return-void
.end method

.method private initLineChart_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$3;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 276
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 281
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minVoltage:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 283
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChartParams(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->setLineChartData_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 294
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private initLineChart_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$4;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 313
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 318
    iget v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->minCapacity:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 321
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChartParams(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->setLineChartData_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 332
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private initLineChart_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$5;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 351
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    .line 359
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChartParams(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->setLineChartData_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 369
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private setLineChartData_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 378
    sget-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->displayVoltage:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 381
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    .line 383
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v7, v8, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v7, 0x0

    .line 384
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 385
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v9}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getAvgVoltage()F

    move-result v9

    .line 386
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v11, v7

    invoke-direct {v10, v11, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 390
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 392
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v9, v8, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v9, 0x0

    .line 393
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 394
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v10}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getElectricity()F

    move-result v10

    .line 395
    new-instance v11, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v12, v9

    invoke-direct {v11, v12, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 400
    :cond_4
    new-instance v9, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d013e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v6, "#28EC19"

    .line 401
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 403
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 404
    invoke-direct {v0, v9}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 406
    new-instance v6, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d014b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v7, "#FACE1F"

    .line 407
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 409
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 410
    invoke-direct {v0, v6}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    const/high16 v10, 0x41100000    # 9.0f

    const v11, -0xffff01

    const/4 v12, 0x2

    if-eqz v3, :cond_9

    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5

    .line 416
    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v13, v8, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v13, 0x0

    .line 417
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 418
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v14}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getCeilingVoltage()F

    move-result v14

    .line 419
    new-instance v15, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v7, v13

    invoke-direct {v15, v7, v14}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 422
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 424
    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v13, v8, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v8, 0x0

    .line 425
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_8

    .line 426
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v13}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getMinimumVoltage()F

    move-result v13

    .line 427
    new-instance v14, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v15, v8

    invoke-direct {v14, v15, v13}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 431
    :cond_8
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f0d015e

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v3, "#EC381A"

    .line 432
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 434
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 435
    invoke-direct {v0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 437
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f0d0175

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v7, "#487CF1"

    .line 438
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 440
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 441
    invoke-direct {v0, v3}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 445
    new-instance v7, Lcom/github/mikephil/charting/data/LineData;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    aput-object v3, v8, v12

    const/4 v2, 0x3

    aput-object v6, v8, v2

    invoke-direct {v7, v8}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 447
    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    .line 449
    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 451
    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 454
    new-instance v2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0022

    invoke-direct {v2, v0, v3, v4}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 456
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_5

    .line 459
    :cond_9
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v12, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v9, v3, v5

    aput-object v6, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 461
    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    .line 463
    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 465
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 468
    new-instance v3, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0022

    invoke-direct {v3, v0, v4, v5}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 470
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    :goto_5
    return-void
.end method

.method private setLineChartData_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 484
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v1, v2, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 485
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 486
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getSurplusCapacity()F

    move-result v4

    .line 488
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v3

    invoke-direct {v5, v6, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 493
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v4, v2, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x0

    .line 494
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 495
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getElectricity()F

    move-result v4

    .line 496
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v2

    invoke-direct {v5, v6, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 501
    :cond_3
    new-instance p2, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d014a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "#28EC19"

    .line 502
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 504
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 505
    invoke-direct {p0, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 508
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d014b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "#FACE1F"

    .line 509
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 511
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 515
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object v0, v3, p2

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const p2, -0xffff01

    .line 517
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 519
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 521
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 522
    new-instance p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-direct {p2, p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 524
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private setLineChartData_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;)V"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v1, v2, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 540
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 541
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTemperatures()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ","

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 544
    array-length v5, v4

    if-lez v5, :cond_1

    .line 545
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v3

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLineChartData_C\u5f02\u5e38:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xiezhixian"

    invoke-static {v4, v3}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 557
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v4, v2, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v2, 0x0

    .line 558
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 559
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getElectricity()F

    move-result v4

    .line 560
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v2

    invoke-direct {v5, v6, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    :cond_4
    new-instance p2, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0150

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "#5988F2"

    .line 567
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 569
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 570
    invoke-direct {p0, p2}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 573
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d014b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "#FACE1F"

    .line 574
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 576
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 577
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initDataSetParams(Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 580
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object v0, v3, p2

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const p2, -0xffff01

    .line 582
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 584
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 586
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 587
    new-instance p2, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-direct {p2, p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 589
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0058

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->tvTopTitleR:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->clearChartData()V

    .line 149
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_A(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_B(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->allBmsHistoryList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChart_C(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f080137

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800c3

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->flTopBack:Landroid/widget/FrameLayout;

    const v0, 0x7f0802a0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->tvTopTitle:Landroid/widget/TextView;

    const v0, 0x7f0802a2

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->tvTopTitleR:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->tvTopTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->tvTopTitleR:Landroid/widget/TextView;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v0, 0x7f080103

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChart;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    const v0, 0x7f080104

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/view/MyLineChart;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    const v0, 0x7f080105

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/MyLineChart;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryA:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initChartDataValue:F

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->setNoDrawLineValue(F)V

    .line 106
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryB:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initChartDataValue:F

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->setNoDrawLineValue(F)V

    .line 107
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->lineChartHistoryC:Lcom/jiabaida/little_elephant/view/MyLineChart;

    iget v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initChartDataValue:F

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/MyLineChart;->setNoDrawLineValue(F)V

    return-void
.end method

.method protected initViewPager(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .line 73
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    sget-object p1, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->TAG:Ljava/lang/String;

    sput-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->timeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
