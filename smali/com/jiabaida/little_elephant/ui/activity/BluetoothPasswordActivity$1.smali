.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$1;
.super Landroid/text/method/DigitsKeyListener;
.source "BluetoothPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
