.class Lcom/htc/calendar/EditEvent$16;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
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
    .line 5251
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$16;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 5255
    if-eqz p2, :cond_0

    .line 5256
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$16;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->currentInputFieldFocusView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/htc/calendar/EditEvent;->access$8302(Lcom/htc/calendar/EditEvent;Landroid/view/View;)Landroid/view/View;

    .line 5258
    :cond_0
    return-void
.end method
