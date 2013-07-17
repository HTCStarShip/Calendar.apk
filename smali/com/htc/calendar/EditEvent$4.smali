.class Lcom/htc/calendar/EditEvent$4;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->initEditEvent(ZZ)V
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
    .line 1640
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$4;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$4;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->addReminder()V
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$6000(Lcom/htc/calendar/EditEvent;)V

    .line 1643
    return-void
.end method
