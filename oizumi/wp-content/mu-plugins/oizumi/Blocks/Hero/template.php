<?php
$template = [
  [
    'core/columns',
    [
      'className' => 'oizumi-hero-block',
      'columns' => 2,
    ],
    [
      [
        'core/column',
        ['className' => 'oizumi-hero-block-1',],
        [
          [
            'core/heading',
            [
              'className' => 'oizumi-hero-heading',
            ],
          ],
          [
            'core/paragraph'
          ],
        ],
      ],
      [
        'core/column',
        ['className' => 'oizumi-hero-block-2',],
        [
          [
            'core/image',
          ],
          [
            'core/image',
          ],
        ],
      ],
    ],
  ],
];
?>

<InnerBlocks template="<?php echo esc_attr(wp_json_encode($template)); ?>" />