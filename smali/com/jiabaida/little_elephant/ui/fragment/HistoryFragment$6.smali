.class Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;->initLineChartParams(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

.field final synthetic val$bmsHistoryList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Ljava/util/List;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;->val$bmsHistoryList:Ljava/util/List;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4

    float-to-int p1, p1

    .line 667
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;->val$bmsHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;->val$bmsHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$6;->val$bmsHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sget-object p1, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDateTime_HHMM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "00:00"

    return-object p1
.end method
