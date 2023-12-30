.class Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;
.super Landroid/os/CountDownTimer;
.source "ForgotPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;JJ)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    .line 214
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d00ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s\t"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    const p2, 0x7f0d00ae

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity$MyCount;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ForgotPwdActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
