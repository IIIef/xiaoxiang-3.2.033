.class Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;
.super Ljava/lang/Object;
.source "BindDevicesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

.field final synthetic val$bleDevice:Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->val$bleDevice:Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;

    iput p3, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->val$bleDevice:Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean$DataBean;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;->onUnBind(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
