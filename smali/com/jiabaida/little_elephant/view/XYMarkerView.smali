.class public Lcom/jiabaida/little_elephant/view/XYMarkerView;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "XYMarkerView.java"


# instance fields
.field private final format:Ljava/text/DecimalFormat;

.field private final tvContent:Landroid/widget/TextView;

.field private final xAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V
    .locals 1

    const v0, 0x7f0a0022

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->xAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    const p1, 0x7f0801ce

    .line 34
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/XYMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->tvContent:Landroid/widget/TextView;

    .line 35
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "###.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->format:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    .line 50
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/XYMarkerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/XYMarkerView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    return-object v0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->tvContent:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->xAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/XYMarkerView;->format:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "x: %s, y: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method
