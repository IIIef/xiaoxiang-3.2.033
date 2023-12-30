.class public Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BindDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

.field private tvItemScanBleMac:Landroid/widget/TextView;

.field private tvItemScanBleName:Landroid/widget/TextView;

.field private tvItemScanConnect:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;Landroid/view/View;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080237

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanBleName:Landroid/widget/TextView;

    const p1, 0x7f080236

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanBleMac:Landroid/widget/TextView;

    const p1, 0x7f080239

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanConnect:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanBleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanBleMac:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;->tvItemScanConnect:Landroid/widget/TextView;

    return-object p0
.end method
