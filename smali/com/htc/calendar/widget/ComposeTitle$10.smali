.class Lcom/htc/calendar/widget/ComposeTitle$10;
.super Landroid/os/Handler;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$10;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2693
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2704
    :goto_0
    return-void

    .line 2698
    :pswitch_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$10;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doUpdateContactInfo(I)V
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3100(Lcom/htc/calendar/widget/ComposeTitle;I)V

    goto :goto_0

    .line 2701
    :pswitch_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$10;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doUpdateSingleContact(Ljava/lang/Object;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$3200(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/Object;I)V

    goto :goto_0

    .line 2693
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
