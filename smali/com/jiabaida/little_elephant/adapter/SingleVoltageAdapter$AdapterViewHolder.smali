.class public Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingleVoltageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field private llyRootBg:Landroid/widget/LinearLayout;

.field private progressSignleVoltage:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

.field private tvCircleVoltageNum:Lcom/jiabaida/little_elephant/view/CircleTextView;

.field private tvSignleVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;Landroid/view/View;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08021c

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/view/CircleTextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->tvCircleVoltageNum:Lcom/jiabaida/little_elephant/view/CircleTextView;

    const p1, 0x7f08015c

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->progressSignleVoltage:Landroid/widget/ProgressBar;

    const p1, 0x7f08029b

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->tvSignleVoltage:Landroid/widget/TextView;

    const p1, 0x7f080125

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->llyRootBg:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->tvSignleVoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->progressSignleVoltage:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Lcom/jiabaida/little_elephant/view/CircleTextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->tvCircleVoltageNum:Lcom/jiabaida/little_elephant/view/CircleTextView;

    return-object p0
.end method
