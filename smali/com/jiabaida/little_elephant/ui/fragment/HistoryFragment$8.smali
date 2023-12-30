.class Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$8;
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


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$8;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    const-string v1, "##0.0#"

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 726
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 727
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    float-to-double v1, p1

    .line 728
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 731
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 732
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    float-to-double v1, p1

    .line 733
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
