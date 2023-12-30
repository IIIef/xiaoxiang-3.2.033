.class Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->showServicesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->services:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 266
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iget-object v1, v0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->services:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    .line 267
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "not selected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;->val$items:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
