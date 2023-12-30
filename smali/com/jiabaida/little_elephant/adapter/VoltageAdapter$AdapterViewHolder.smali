.class public Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VoltageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field private btnDzParams:Landroid/widget/TextView;

.field private edtDzParams:Landroid/widget/EditText;

.field private llyResistanceRoot:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

.field private tvDzParams:Landroid/widget/TextView;

.field private tvDzParamsName:Landroid/widget/TextView;

.field private tvDzParamsUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;Landroid/view/View;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    .line 121
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080130

    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->llyResistanceRoot:Landroid/widget/LinearLayout;

    const p1, 0x7f08022f

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParamsName:Landroid/widget/TextView;

    const p1, 0x7f08022e

    .line 124
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParams:Landroid/widget/TextView;

    const p1, 0x7f080230

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParamsUnit:Landroid/widget/TextView;

    const p1, 0x7f0800ac

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->edtDzParams:Landroid/widget/EditText;

    const p1, 0x7f080036

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->btnDzParams:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParamsName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParams:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->tvDzParamsUnit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/EditText;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->edtDzParams:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$AdapterViewHolder;->btnDzParams:Landroid/widget/TextView;

    return-object p0
.end method
