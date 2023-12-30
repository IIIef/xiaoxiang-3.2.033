.class Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;
.super Ljava/lang/Object;
.source "BlueCmdUtils.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->changeBatteryMode(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

.field final synthetic val$batteryNum:I

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    iput p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->val$mode:I

    iput p3, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->val$batteryNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    iget p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->val$mode:I

    iget v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->val$batteryNum:I

    invoke-static {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$000(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;II)V

    .line 171
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    iget p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;->val$mode:I

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$100(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;I)V

    return-void
.end method
