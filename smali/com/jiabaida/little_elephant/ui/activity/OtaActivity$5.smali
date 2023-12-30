.class Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->showCharsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

.field final synthetic val$characteristics:Ljava/util/List;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->val$characteristics:Ljava/util/List;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->val$characteristics:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 294
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;->val$items:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
