.class public Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleMarkerView"
.end annotation


# instance fields
.field private mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;Landroid/content/Context;I)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment;

    .line 772
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0801ce

    .line 774
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->tvContent:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    return-object v0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/HistoryFragment$SampleMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method
