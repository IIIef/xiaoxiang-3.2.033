.class public Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ParamsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field private itemParameterIcon:Landroid/widget/ImageView;

.field private itemParameterName:Landroid/widget/TextView;

.field private relatItem:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080167

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->relatItem:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800de

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->itemParameterIcon:Landroid/widget/ImageView;

    const p1, 0x7f0800df

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->itemParameterName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->itemParameterIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->itemParameterName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$AdapterViewHolder;->relatItem:Landroid/widget/RelativeLayout;

    return-object p0
.end method
