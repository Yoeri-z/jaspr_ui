import 'package:jaspr/jaspr.dart';

class SwapFlip extends StatelessComponent {
  const SwapFlip({
      this.front = '😈',
      this.back = '😇',
  });

  final String? front;
  final String? back;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield raw('''
<label class="swap swap-flip text-9xl">
  <!-- this hidden checkbox controls the state -->
  <input type="checkbox" />
  
  <div class="swap-on">$front</div>
  <div class="swap-off">$back</div>
</label>
''');
  }
}
