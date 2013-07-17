.class Lcom/htc/calendar/widget/ComposeTitle$14;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;

.field final synthetic val$fType:I


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3106
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iput p2, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->val$fType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3108
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->val$fType:I

    if-nez v0, :cond_1

    .line 3109
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList_Email()V
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$4500(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3110
    :cond_1
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->val$fType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$14;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v0}, Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList_Facebook()V

    goto :goto_0
.end method
