.class public Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScanBleDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field private checkScanBle:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

.field private tvBaseKey:Landroid/widget/TextView;

.field private tvItemScanBleMac:Landroid/widget/TextView;

.field private tvItemScanBleName:Landroid/widget/TextView;

.field private tvItemScanBleSignal:Landroid/widget/TextView;

.field private tvItemScanConnect:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;Landroid/view/View;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    .line 280
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08004c

    .line 281
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->checkScanBle:Landroid/widget/CheckBox;

    const p1, 0x7f080237

    .line 282
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleName:Landroid/widget/TextView;

    const p1, 0x7f080236

    .line 283
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleMac:Landroid/widget/TextView;

    const p1, 0x7f080238

    .line 284
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleSignal:Landroid/widget/TextView;

    const p1, 0x7f080239

    .line 285
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanConnect:Landroid/widget/TextView;

    const p1, 0x7f080218

    .line 286
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvBaseKey:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleMac:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->checkScanBle:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanConnect:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvItemScanBleSignal:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;->tvBaseKey:Landroid/widget/TextView;

    return-object p0
.end method
