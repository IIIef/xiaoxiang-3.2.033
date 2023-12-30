.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;
.super Landroid/os/Handler;
.source "BalanceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 243
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 244
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7532

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x754a

    const-string v4, ""

    if-eq p1, v0, :cond_6

    const/16 v0, 0x754d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 296
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_2

    .line 301
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_2

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 264
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    aget-byte v1, p1, v1

    shl-int/2addr v1, v3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$002(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;I)I

    .line 273
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v0

    and-int/2addr v0, v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z

    .line 274
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 278
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;Z)Z

    .line 281
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Z

    move-result p1

    const v0, 0x7f0d00d7

    const v2, 0x7f0d011d

    if-eqz p1, :cond_5

    .line 282
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v3, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0, v5, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2, v1, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 287
    :cond_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0, v5, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->listBalanceType:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1, v4}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    :cond_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    .line 254
    aget-byte v0, p1, v1

    shl-int/2addr v0, v3

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x5

    .line 256
    aget-byte v1, p1, v1

    shl-int/2addr v1, v3

    const/4 v2, 0x6

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    .line 258
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 247
    :cond_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v1

    shl-int/2addr v0, v3

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;F)F

    .line 248
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;)V

    :goto_2
    return-void
.end method
