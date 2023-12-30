.class Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;
.super Landroid/os/Handler;
.source "OtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 94
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_4

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/telink/ota/fundation/StatusCode;

    .line 96
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x14

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x15

    if-eq v1, v4, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x19

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x16

    if-eq v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getCode()I

    move-result v1

    const/16 v4, 0x18

    if-ne v1, v4, :cond_2

    .line 103
    :cond_1
    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    .line 104
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->getDesc()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    const v4, 0x7f0d0058

    .line 105
    invoke-virtual {v1, v4}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    const v4, 0x7f0d005b

    .line 106
    invoke-virtual {v1, v4}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 103
    invoke-static/range {v5 .. v10}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/telink/ota/fundation/StatusCode;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v1, v3}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Z)V

    .line 114
    :cond_3
    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->SUCCESS:Lcom/telink/ota/fundation/StatusCode;

    if-ne v0, v1, :cond_7

    .line 115
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 117
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 118
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_5

    .line 119
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v4, :cond_6

    const-string v1, "disconnect"

    goto :goto_1

    :cond_6
    const-string v1, "connect"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getConnectionDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void
.end method
