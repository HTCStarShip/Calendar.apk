.class Lcom/htc/calendar/EditEvent$7;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->populateTimezone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$7;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$7;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v0}, Lcom/htc/calendar/EditEvent;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2196
    :goto_0
    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$7;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->showTimezoneDialog()V
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$6200(Lcom/htc/calendar/EditEvent;)V

    goto :goto_0
.end method
